with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure excpejfn is
   iRdo: Integer;

   function fniValor return Integer is
      iAux: Integer;
   begin
      Put_Line ("Introducir valor entero");
      Get (iAux);
      return iAux;
--     exception
--        when Constraint_Error | DATA_ERROR =>
--           Put_Line("Error. Introduzca un valor entero");
--           iAux:=fniValor;
--           return iAux;
   end fniValor;

begin
   iRdo:= 1000+fniValor;
   Put_Line("El resultado es" & Integer'Image (iRdo));
end excpejfn;
