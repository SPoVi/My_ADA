
-- librerias
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;


procedure Main is

begin
   --  Insert code here.
   put("01234567890123456789"); New_Line;
   put(120); New_Line;
   put(120,8); New_Line;
   put(120, 8, 8); New_Line;
   put(120, 0); New_Line;
   put(120, 1); New_Line;
   put(0.07); New_Line;
   put(-5.0); New_Line;
   put(3.14159, 1, 4); New_Line;
   put(9_999_999_999.9, 1, 1, 1); New_Line;
   null;
end Main;
