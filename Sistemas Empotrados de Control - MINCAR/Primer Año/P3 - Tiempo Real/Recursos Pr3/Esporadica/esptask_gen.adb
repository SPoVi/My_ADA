
with Ada.Text_Io; use Ada.Text_Io;

package body esptask_gen is
   task body Esporadic_Task is
      DeadLine, Separation: Time_Span;
      Next: time;
   begin
      Put_Line("Ejecuto tarea esporádica" & Integer'Image (Id));
      DeadLine:= Seconds(Plazo);
      Separation:= Seconds (SepMin);
      loop
         Suspend_Until_True(Evento.all);

         Next:=Clock;

         select-- control plazo
            delay until (Next + DeadLine); -- delay hasta hora actual + plazo
            pUT ("ABORTO"& Integer'Image(Id));-- aquí podría ir la recovery acción
         then abort
            Proc.all;-- aborto si me paso el plazo
         end select;
         Next := Next + Separation;
         delay until Next;
         Put_Line("it " & Integer'Image(Id));
      end loop;
   end Esporadic_Task;
end esptask_gen ;
