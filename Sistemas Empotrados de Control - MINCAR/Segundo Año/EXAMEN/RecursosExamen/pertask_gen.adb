with Ada.Real_Time;use Ada.Real_Time;
with Ada.Text_Io; use Ada.Text_Io;
with ComienzoFin; use ComienzoFin;
package body PerTask_gen is

   task body Periodic_Task is
      Per,D  : Time_Span;
      Next : Time;
   begin
      Put_Line("Ejecuto tarea periódica" & Integer'Image (Id));
      Stop.Wait;
      Per  := Seconds(Period);
      D:= milliSeconds(Deadline);
      Next:= Comienzo.Get_Initial_Time;
      delay until Next;

      loop
         Next := Next + Per;
         delay until Next;
         select
            delay until (Next + D);
            pUT ("ABORTO"& Integer'Image(Id));
         then abort
             Proc.all;
         end select;

         exit when Fin.Get_Finish;
      end loop;
      Put_Line ("Fin tarea" & Integer'Image(Id));
   end Periodic_Task;
end PerTask_gen;
