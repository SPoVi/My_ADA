with Pila; use Pila;
with Ada.Text_IO; use Ada.Text_IO;

procedure UsoPila is
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

end UsoPila;
