with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure main is

   -- Var a utilizar
   num: Integer;

   type Modular is mod 5;


   procedure T (M : in out Modular) is

   begin
   M := M + 1;

   end T;

begin
   Put("Introduce num: ");
   get(num);

   T(Modular(num));


end main;
