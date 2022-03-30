with PilaL; use PilaL;
with Ada.Text_IO; use Ada.Text_IO;

procedure UsoPilaL is
   procedure Escribir is
   begin
      for I in 1..200 loop
      Push(I);
      end loop;
   end Escribir;

   procedure leer is
   begin
     for I in 1..20 loop
         Put_Line(Integer'Image(Pop));
      end loop;
   end leer;

begin
   Escribir;
   Leer;
exception
   when ErrorPila=>
      Put_Line("Uso inadecuado de la pila");
      --Leer;  --Se puede llamar de nuevo al main
      --null;
end UsoPilaL;
