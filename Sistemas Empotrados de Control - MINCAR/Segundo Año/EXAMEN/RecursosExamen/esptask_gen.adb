with Ada.Text_Io; use Ada.Text_Io;
with barreras; use barreras; -- Wait
with ComienzoFin; use ComienzoFin; -- Finished

package body esptask_gen is

   ------tipo TAREA----------------
   task body Esporadic_Task is
      Sep, D: Time_Span;
      Next : Time;
   begin
      Put_Line("Ejecuto tarea esporádica" & Integer'Image (Id));
      Sep := Seconds(Separation);
      D:= Milliseconds (Plazo);

      Stop.WAit;

      delay until Comienzo.Get_Initial_Time;

      loop
         Suspend_Until_True(Control.all);
         exit when Fin.Get_Finish;
         Next:= clock;
         select
            delay until (Next + D);
            pUT ("ABORTO"& Integer'Image(Id));
         then abort
             Proc.all;
         end select;

         Next := Next + Sep;
         delay until Next;
      end loop;
      Put_Line ("Fin tarea" & Integer'Image(Id));
   end Esporadic_Task;
end esptask_gen ;
