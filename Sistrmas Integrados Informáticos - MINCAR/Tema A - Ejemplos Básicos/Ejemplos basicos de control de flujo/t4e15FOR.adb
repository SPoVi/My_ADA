--  A334
--for: cuadrado de los 12 primeros numeros

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure A334 is
   nNum: constant Natural := 12;
   nRdo : Natural;
begin

   for I in 1..nNum  loop
      nRdo := I**2;
      Put(nRdo); New_Line;

   end loop;
end A334;
--  si te pasas, da error de ejecución:
--  raised CONSTRAINT_ERROR : a334.adb:12 overflow check failed
