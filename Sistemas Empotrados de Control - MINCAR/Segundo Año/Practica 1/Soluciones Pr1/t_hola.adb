with Ada.Text_IO; use Ada.Text_IO;

package body t_hola is
   task body tareahola is
   begin
      loop
         Put_Line ("Hola, soy la tarea " & Integer'image (Id));
         delay Retardo.all;
      end loop;
   end tareahola;
end t_hola;
