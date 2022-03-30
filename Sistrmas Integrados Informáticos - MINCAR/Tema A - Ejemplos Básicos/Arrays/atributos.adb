with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure atributos is
   type T_aiValores is array (Integer range <>) of Integer;
   ai1: T_aiValores(1..4):= (1, 2, 3, 4);
   ai2: T_aiValores (1..4);

   type T_af is array (1..3) of Float;
   af1: T_af:= (0.0, 1.0, 2.0) ;
   af2: T_af;

   Long: Natural;

   type T_af2D is array (1..2, 1..2) of Float;
   af2D: T_af2D:=(others=> (others=>0.0));


begin
   af1(T_af'First):=2.0;
   af1(af1'First):=2.0;
   --ai1(T_aiValores'Last) := 20;  --Error compilación
   ai1(ai1'Last) := 20;

   for I in ai1'Range loop
      Put (Integer'Image(ai1(I))); New_Line;
   end loop;

   af2 (1):= 5.4;
   Long:= T_af'Length; Put (Natural'Image (Long)); New_Line;
   Long:= af2'Length; Put (Natural'Image (Long)); New_Line;
   Long:= ai1'Length;

   Put("Lenght: "); Put (ai2'Length); New_Line;

   af2D (af2D'First (1), af2D'First (2)):=5.0;
   for I in af2D'Range (1) loop    --Range es abreviación del rango first..last
      for J in af2D'Range (2) loop
         Put (Float'Image(af2D(I,J))); New_Line;

      end loop;
   end loop;

   Long:=af2D'Length (2); Put (Natural'Image (Long));
end atributos ;
