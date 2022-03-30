-------------------------------------
-- Procedimiento principal de GEME --
-------------------------------------
-- AUTORES:
-- Raquel Izaga
-- Sergio Pons
-- Mike Manzanal
-------------------------------------

with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with pertask_gen; use pertask_gen;
with esptask_gen; use esptask_gen;
with comienzofin; use comienzofin;
with barreras; use barreras;
with sensort; use sensort;
with tamponop;
with Ada.Characters.Handling; use Ada.Characters.Handling;
with Ada.Synchronous_Task_Control; use Ada.Synchronous_Task_Control;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Real_Time; use Ada.Real_Time;

procedure main is
   pragma Time_Slice (0.0);
   -- CONSTANTES DE TRANSFORMACION
   T2V : constant Float := 20.0; -- �C/V
   P2S : constant Float := 0.25; -- %/W
   P2V : constant Float := 0.125;-- V/W

   -- BUFFERS DE VARIABLES SIGNIFICATIVAS
   subtype Temp is Float range 0.0 .. 100.0; -- Grados
   subtype ErrorT is Float range -100.0 .. 100.0;
   subtype Power is Float range 0.0 .. 400.0; -- Watios

   -- TIPO DE OPRACIONES
   -- F -> finalizar
   -- I -> Incrementar
   -- D -> Decrementar
   -- M -> Mostrar
   type ID is (F,I,D,M);

   -- PAQUETE PARTICULAR DE CADA TIPO
   package pTempBuffer is new TamponOP (10, Temp, 15.0, Float'Image, ID); use pTempBuffer;
   package pPowerBuffer is new TamponOP (10, Power, 200.0, Float'Image, ID); use pPowerBuffer;
   package pErrorBuffer is new TamponOP (10, ErrorT, 0.0, Float'Image, ID); use pPowerBuffer;


   Temp_Leida :   pTempBuffer.Pila;       -- Buffer de temperaturas
   Output_Power : pPowerBuffer.Pila;      -- Buffer de potenica
   Error: pErrorBuffer.Pila;              -- Buffer de error
   SetPoint_Temp : pTempBuffer.Consigna;  -- Consigna de temperatura
   IDo: pTempBuffer.Operation_ID;         -- Tipo de operacion

   -- EVENTOS --
   Evento : aliased Suspension_Object;

   -- OPERACIONES --
   procedure Operacion;		   -- Operaciones que realiza

   -- TAREAS
   procedure Update_Control;    -- Accion de control
   procedure Print_Temperature; -- Mostrat temperatura
   procedure Compute_Model;     -- Simular modelo

   Control_Task : Periodic_Task(1, 10, 2, 500,  Update_Control'Access);
   Model_Task   : Periodic_Task(2, 8,  4, 1000,  Compute_Model'Access);
   Operation_STask : Esporadic_Task(3, 6, 10, 10000, Operacion'Access, Evento'Access);
   -- TAREA ANÓNIMA
   task t_CrearEvento is
      pragma Priority(50);
   end t_CrearEvento;

   -- Procedimiento que ejecuta la esporadica segun la operacion fijada
   procedure Operacion is
      procedure Finalizar is
      begin
         Put_Line("Finalizando tareas ...");
         Fin.Set_Finish;
      end finalizar;

      procedure Incrementar is
         aux : Temp;
      begin
         SetPoint_Temp.Get(aux);
         aux := aux + 2.0;
         SetPoint_Temp.Set(aux);
      end Incrementar;

      procedure Decrementar is
         aux: Temp;
      begin
         SetPoint_Temp.Get(aux);
         aux := aux - 2.0;
         SetPoint_Temp.Set(aux);
      end Decrementar;

      procedure Mostrar is
      begin
         Put_line("Pila de Temperatura");
         Temp_Leida.Mostrar_Pila;
         Put_line("Pila de Potencia");
         Output_Power.Mostrar_Pila;
         new_line(2);
      end Mostrar;
      OP_ID: ID;
   begin
      IDo.Get_Operation(OP_ID);
      put("Ejecutando tarea esporadica: ");
      put(ID'Image(OP_ID));
      new_line(2);
      case OP_ID is
      when F =>
         Finalizar;
      when I =>
         Incrementar;
      when D =>
         Decrementar;
      when M =>
         Mostrar;
      when others =>
         null;
      end case;

   end Operacion;

   -- Procedimiento que ejecuta la tarea de control
   procedure Update_Control is
      uk, ukant: Power := 0.0;
      tk, ct: Temp := 0.0;
      ek, ekant : ErrorT := 0.0;
      aux: Float;
   begin
      put_line("TAREA DE CONTROL");

      put("Consigna actual: ");
      SetPoint_Temp.Get(ct);
      put(ct,3,1,0);
      new_line;

      put("Temperatura actual: ");
      Temp_Leida.Leer(tk,0);
      put(tk,3,1,0);
      new_line;

      -- Calculo uk
      error.Leer(ekant,0);
      ek := ct-tk;
      error.Escribir(ek);
      Output_Power.Leer(ukant,0);
      aux := ukant*P2S+3.488*Float(ek)-3.1926*Float(ekant);
      if aux < 0.0 then
         uk:=0.0;
      elsif aux > 100.0 then
         uk:= 400.0;
      else uk:=aux/P2S;
      end if;
      Output_Power.Escribir(uk);

      put("Accion actual: ");
      put(uk,3,1,0);
      new_line(2);
   end Update_Control;

   -- Procedimiento para la simulacion del modelo
   procedure Compute_Model is
      tk,tkant : Temp;
      ukant: Power;
      aux : Float;
   begin
      Put_line("TAREA DE MODELO");
      Temp_Leida.Leer(tkant,0);
      Output_Power.Leer(ukant,0);
      -- Calculo de la temperatura
      aux:= 0.9286*tkant+0.0414*Float(ukant)*P2V;
      if aux < 0.0 then
         tk := 0.0;
      elsif aux > 100.0 then
         tk := 100.0;
      else tk := aux;
      end if;
      Temp_Leida.Escribir(tk);
      Put("Temperatura Leida: ");
      Put(tk,3,1,0);
      new_line(2);
   end Compute_Model;

   task body t_CrearEvento is
      IDc: String(1..1);
   begin
      loop
      Get(IDc);
      IDc := To_Upper(IDc
      -- Asginar operacion en funcion de la entrada del usuario
      if IDc = "F" or IDc = "I" or IDc = "D" or IDc = "M" then
         IDo.Set_Operation(ID'Value(IDc));
         Set_True(Evento); -- Levantar la esporadica
      end if;
      exit when Fin.Get_Finish;
   end loop;
   end t_CrearEvento;

begin
   Put_Line ("Todas las tareas activadas");
   Comienzo.Set_Initial_Time (Clock + Seconds(5));
   delay until clock + seconds (1);
   Stop.Go;
end main;
