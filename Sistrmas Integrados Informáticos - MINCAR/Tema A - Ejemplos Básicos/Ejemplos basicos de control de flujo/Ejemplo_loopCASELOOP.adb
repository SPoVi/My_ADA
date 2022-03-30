with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure Ejemplo_Loop is
   iOpción: Integer;
begin
   Put_Line ("------MENÚ------");
   Put_Line ("Opción 1: Cálculo 1");
   Put_Line ("Opción 2: Cálculo 2");
   Put_Line ("Opción 3: Cálculo 3");
   loop
      Get (iOpción);
      exit when iOpción in 1 .. 3;
      Put_Line ("Introduzca un valor entre 1 y 3");
   end loop;
   case iOpción is
      when 1 => put_line("Opción1");
      when 2 => put_line("Opción2");;
      when 3 => put_line("Opción3");
      when others =>
         null;
   end case;
end Ejemplo_Loop;
