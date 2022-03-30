with Ada.Text_Io; use Ada.Text_Io;
with Pertask_gen; use Pertask_gen;

procedure UserPerTask is
   pragma Time_Slice(0.0);

   procedure Saludar (Id: Integer) is
   begin
      Put_Line ("Hola, soy la tarea " & Integer'Image(Id));
   end Saludar;

   -- Periodic_Task(id, Prio, Periodo,Plazo, método)
   -- en Pertasks
   T1 : Periodic_Task(1, 65, 10, 1, Saludar'access);
   T2 : Periodic_Task(2, 60, 15, 12, Saludar'access);
   T3 : Periodic_Task(3, 55, 20, 16, Saludar'access);
   T4 : Periodic_Task(4, 50, 25, 20, Saludar'access);

begin
   Put_Line ("Todas las tareas activadas");
end UserPerTask;


