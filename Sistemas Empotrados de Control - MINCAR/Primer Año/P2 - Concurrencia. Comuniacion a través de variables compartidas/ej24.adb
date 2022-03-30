with Ada.Text_IO; use Ada.Text_IO;
with TamponOP;
with Aleat; use Aleat;

procedure Ej24 is
   pragma Time_Slice (0.0);

   package pMiTampon is new TamponOP(10, T_stInt);use pMiTampon;
   MiTampon: Tampon_Circular; -- declaración de objeto protegido
   -----------------DECLARACIÓN TAREAS---------------

   task t_Lectora;

   task body t_Lectora  is
      stiValor:T_stInt;
   begin
      for I in 1..5 loop
         MiTampon.Sacar(stiValor);
         Put_Line("Saco" & Integer'Image(stiValor));
         delay 1.0;
      end loop;
   end t_Lectora ;

   task t_Escritora;

   task body t_Escritora  is
      stiValor:T_stInt;
   begin
      for I in 1..5 loop
         stiValor:=fstInt;
         Put_Line("Meto"& Integer'Image(stiValor));
         MiTampon.Anyadir(stiValor);
         delay 1.0;
      end loop;
   end t_Escritora ;

begin
  null;
end Ej24;
