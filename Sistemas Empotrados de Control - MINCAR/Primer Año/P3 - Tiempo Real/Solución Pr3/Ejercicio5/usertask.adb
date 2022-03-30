
with Ada.Text_Io; use Ada.Text_Io;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

with Ada.Synchronous_Task_Control; use Ada.Synchronous_Task_Control;-- Declaración evento esporádica

with Ada.Real_Time;use Ada.Real_Time;
with Pertask_gen; use Pertask_gen;
with EspTask_gen; use EspTask_gen;
with ComienzoFin; use ComienzoFin;

with aleat; use aleat;

procedure UserTask is
   pragma Time_Slice (0.0);

   Control: Aliased Suspension_Object; -- declaración de elementos tipo evento para pasarlos a EsporadicTask
                                       --Inicializacion adquisición
   procedure ValorAleatorio;
   procedure Alarma;
    -- Esporadic_Task (Id, Prio, SepMin, Plazo(ms) : Integer; Proc:  not null access Procedure)
   -- Periodic_Task (Id, Prio, Period, Deadline(ms): Integer; Proc : not null access procedure(id:Integer))
   T1 : Periodic_Task(1, 60, 2, 2000, ValorAleatorio'Access);
   T2 : Esporadic_Task(2, 50, 4, 4000, Alarma'Access, Control'access);

   procedure ValorAleatorio is

      iValor: Integer;
   begin

      iValor:= fstInt;
      if iValor > 900 then
         Fin.Set_Finish;
         Set_True(Control);
  -- Finish antes para que cuando se ponga el sem a verde, Finished ya sea true.

      elsif iValor > 700 then
         Put (iValor); New_Line;
         Set_True(Control);
      end if;

   end ValorAleatorio;

   procedure Alarma is
   begin
      Put_Line ("Umbral superado");
   end Alarma;

begin
   Put_Line ("Todas las tareas activadas");
   Comienzo.Set_Initial_Time (Clock + Seconds(5));
   delay until clock + seconds (1);
   Stop.Go;
end UserTask;


