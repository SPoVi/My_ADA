with Ada.Text_IO ; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Hola is

begin
   --  Insert code here.
   Put_line("Hola mundo");

   -- Ejercicio 1
   Put("Fred");
   New_Line;
   Put(120);
   Put(120, 8);
   Put(120, 0);
   Put(-120, 0);
   Put(120, 8, 8);
   Put(-38.0);
   Put(0.07);
   Put(3.14159, 1, 4);
   Put(9_999_999_999.9, 1, 1, 1);


end Hola;
