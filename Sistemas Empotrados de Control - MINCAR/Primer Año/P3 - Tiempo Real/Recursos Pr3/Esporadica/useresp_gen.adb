with Ada.Text_Io; use Ada.Text_Io;
with EspTask_gen; use EspTask_gen; -- tareas esporádicas

with Ada.Synchronous_Task_Control; use Ada.Synchronous_Task_Control;

procedure UserEsp_gen is
   pragma Time_Slice (0.0);

   procedure Escribir is
      begin
         Put_Line ("Valor superado");
   end Escribir;
   Evento: aliased Suspension_Object;
   Esp : Esporadic_Task(1, 50, 5, 3, Escribir'access, Evento'access);

   task t_CrearEvento is -- tarea anónima
      pragma Priority(50);
   end t_CrearEvento;

   task body t_CrearEvento is
      cTecla: Character;

   begin
      loop
         Get(cTecla);
         if cTecla = 'f' then
            Set_True(Evento);
         end if;
      end loop;
   end t_CrearEvento;

begin
  null;
end UserEsp_gen;


