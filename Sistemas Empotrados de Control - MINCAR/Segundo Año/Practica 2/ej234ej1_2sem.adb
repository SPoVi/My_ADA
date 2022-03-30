-- EJERCICIO: Repetir 5 veces con un delay de 1s las tareas t Lectora (pone el
-- sem en verde) y T Monitor (espera mientras el sem eta en rojo).

-- Version 2: 1 Objeto compardo

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;



procedure Ej234ej1_2sem is
   pragma Time_Slice(0.0);

   -- ESPECIFICACION SEMAFORO
   protected type SincrCond is
      entry Wait;
      procedure Go;
   private
      -- OBJETO COMPARTIDO
      Opened: Boolean := False; -- valor inicial: FALSE. No se pasa como parámetro del protected type porque un semáforo de sincr siempre sebe estar inicializado a false
   end SincrCond;

   -- CUERPO SEMAFORO
   protected body SincrCond is

      entry Wait when Opened is -- tarea suspendida hasta que Opened=TRUE
      begin
         Opened := False;
         --Go;-- Pone de nuevo semáforo en rojo
      end Wait;

      procedure Go is		-- Opened = TRUE -> pone semáforo en verde
      begin
         Opened :=True;

      end Go;

   end SincrCond;

   -- ESPECIFICACION ENTERO COMPARTIDO
   protected type shared_int is
      procedure Write (iValor: Integer);
      function Read return Integer;
   private
      The_data: Integer;
   end shared_int;

   -- CUERPO ENTERO COMPARTIDO
   protected body shared_int is
      procedure Write (iValor: Integer) is
      begin
         The_data:=iValor;
      end Write;

      function Read return Integer is
      begin
         return The_data;
      end Read;
   end shared_int;


   Sem1: SincrCond;      -- SEMAFORO 1
   Sem2: SincrCond;	 -- SEMAFORO 2
   opValor: shared_int; -- VARIABLE COMPARTIDA

   task Tarea1 is  -- INTRODUCIR VALOR
   end Tarea1;

   task body Tarea1 is
      iValor:Integer;
   begin
      for I in 1..5 loop
         Put_Line("Introduce valor: ");
         Get (iValor);
         opValor.Write (iValor);
         Sem1.Go; -- Pone sem1 en verde.
         Sem2.Wait; -- Espera mientras sem2 en rojo
         --delay 0.5; -- Necesario para que no entre otra vez antes de que el sem cambie y entre la tarea 2
      end loop;

   end Tarea1;

   task Tarea2 is  -- MOSTRAR VALOR
   end Tarea2;

   task body Tarea2 is
   begin
      for I in 1..5 loop
         Sem1.Wait; -- Espera mientras semáforo1 en rojo
         Put("El valor es ");
         Put(opValor.Read, width => 1);
         new_line(1);
         Sem2.Go;
      end loop;

   end Tarea2;

begin
  null;
end Ej234ej1_2sem;



