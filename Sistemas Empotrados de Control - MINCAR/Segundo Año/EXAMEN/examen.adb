with Ada.Text_Io; use Ada.Text_Io;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Characters.Handling; use Ada.Characters.Handling;

with sensorT; use sensorT;

with Ada.Synchronous_Task_Control; use Ada.Synchronous_Task_Control;
with Ada.Real_Time; use Ada.Real_Time;
with Pertask_gen; use Pertask_gen;
with EspTask_gen; use EspTask_gen;
with ComienzoFin; use ComienzoFin;

procedure examen is
   pragma Time_Slice (0.0);

   Control: Aliased Suspension_Object; -- declaracion de evento para pasarlo a EsporadicTask

   ----------DECLARACION OBJ PROTEGIDO---------

   protected type Shared_Float  is
      function Read return Float;
      procedure Write (rValor : Float);
   private
      The_Data: Float;
   end Shared_Float;

   protected body Shared_Float is

      function Read return Float is
      begin
         return The_Data;
      end Read;

      procedure Write (rValor : Float) is
      begin
         The_Data:= rValor;
      end Write;

   end Shared_Float;

   oprTemp : Shared_Float; -- Declaracion de objeto protegido para almacenar valor;

   procedure ValorTemp;
   procedure MostrarTemp;

   task TTeclado is
      pragma Priority (55); -- Tarea señalizadora con la misma prioridad que la esporadica
   end TTeclado;

   task body TTeclado is
      cCambio: Character;
   begin
      Stop.Wait;
      delay until Comienzo.Get_Initial_Time;
      Put_Line ("Pulsar M para MOSTRAR valor o F para finalizar");
      loop

         get (cCambio);
         new_line(2);
         IF cCambio = 'M' then
            Set_True(Control);
         end if;
         IF cCambio = 'F' then
            Fin.Set_Finish;
            Set_True(Control);
         end if;
         exit when Fin.Get_Finish;
      end loop;
      Put_Line ("Fin Tarea TTeclado");
   end TTeclado;

   -- Esporadic_Task (Id, Prio, SepMin, Plazo(ms) : Integer; Proc:  not null access Procedure)
   -- Periodic_Task (Id, Prio, Period, Deadline(ms): Integer; Proc : not null access procedure(id:Integer))
   T1 : Periodic_Task(1, 60, 2, 500, ValorTemp'Access);
   T2 : Esporadic_Task(2, 55, 6, 1000, MostrarTemp'Access, Control'access);

   procedure ValorTemp is
   begin
      oprTemp.Write(fstT);
   end ValorTemp;

   procedure MostrarTemp is
   begin
      Put ("Temperatura actual ");
      Put (oprTemp.Read,0,1,0);
      new_line;
   end MostrarTemp;
begin
   Put_Line ("Todas las tareas activadas");
   Comienzo.Set_Initial_Time (Clock + Seconds(5));
   delay until clock + seconds (1);-- para que les de tiempo a las tareas a quedarse en el wait
   Stop.Go;
end examen;
