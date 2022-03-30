with Ada.Text_Io; use Ada.Text_Io;
with barreras; use barreras; -- Wait
with ComienzoFin; use ComienzoFin; -- Finished

package body esptask_gen is

   ------tipo TAREA----------------
   task body Esporadic_Task is
      Sep, D: Time_Span;
      Next : Time;
   begin
      Put_Line("Ejecuto tarea esporadica" & Integer'Image (Id));
      Sep := Seconds(Separation);-- precision unidad  de tiempo
      D:= Milliseconds (Plazo);

      Stop.WAit;

      delay until Comienzo.Get_Initial_Time;

      loop
         Suspend_Until_True(Control.all);
         exit when Fin.Get_Finish;
         Next:= clock;
         select
            delay until (Next + D); -- delay hasta hora actual + plazo: entiende mezclas de unidades
            pUT ("ABORTO"& Integer'Image(Id));-- aqui podria ir la recovery accion
         then abort
            --  Procedimiento que se ejecuta periodicamente;
             Proc.all;-- aborto si me paso el plazo
         end select;

         Next := Next + Sep;
         delay until Next;
         --Put_Line("it " & Integer'Image(Id));
      end loop;
      Put_Line ("Fin tarea" & Integer'Image(Id));
   end Esporadic_Task;
end esptask_gen ;
