with Ada.Real_Time;use Ada.Real_Time;
with Ada.Synchronous_Task_Control; use Ada.Synchronous_Task_Control;
package esptask_gen is

   task type Esporadic_Task (Id, Prio, SepMin, Plazo : Integer; Proc:  not null access Procedure; Evento: access Suspension_Object) is
      pragma Priority(Prio);

   end Esporadic_Task;

end esptask_gen;
