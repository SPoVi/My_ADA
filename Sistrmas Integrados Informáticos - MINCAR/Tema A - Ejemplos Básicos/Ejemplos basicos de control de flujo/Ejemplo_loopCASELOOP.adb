with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure Ejemplo_Loop is
   iOpci�n: Integer;
begin
   Put_Line ("------MEN�------");
   Put_Line ("Opci�n 1: C�lculo 1");
   Put_Line ("Opci�n 2: C�lculo 2");
   Put_Line ("Opci�n 3: C�lculo 3");
   loop
      Get (iOpci�n);
      exit when iOpci�n in 1 .. 3;
      Put_Line ("Introduzca un valor entre 1 y 3");
   end loop;
   case iOpci�n is
      when 1 => put_line("Opci�n1");
      when 2 => put_line("Opci�n2");;
      when 3 => put_line("Opci�n3");
      when others =>
         null;
   end case;
end Ejemplo_Loop;
