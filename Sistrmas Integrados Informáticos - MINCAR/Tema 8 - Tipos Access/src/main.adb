with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;

procedure Main is

   -- var locales
   fnum: Float;
begin
   --  Insert code here.
   put("Introduce el numero: "); get(fnum);

   fnum := sqrt(fnum);

   Put("Raiz cuadrada del numero introducido introducido: ");put(fnum,0,2,0);
   New_Line;
   fnum := Sin(fnum);
   Put("Seno del numero introducido: "); put(fnum,0,2,0);
end Main;
