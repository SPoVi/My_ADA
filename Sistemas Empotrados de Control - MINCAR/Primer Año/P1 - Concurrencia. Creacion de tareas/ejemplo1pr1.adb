with Ada.Text_IO; use Ada.Text_IO;

procedure ejemplo1pr1 is
   pragma Time_Slice(0.0);

   task Tarea1;

   task body Tarea1 is
   begin
     loop
         Put_Line ("Hola, soy la tarea 1");
         delay 1.0;
      end loop;

   end Tarea1;


   task Tarea2;

   task body Tarea2 is
   begin
       loop
         Put_Line ("Hola, soy la tarea 2");
         delay 4.0;
      end loop;

   end Tarea2;

begin
   null;
end ejemplo1pr1;
