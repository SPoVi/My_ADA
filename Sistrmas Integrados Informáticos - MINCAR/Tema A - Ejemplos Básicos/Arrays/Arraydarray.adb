with Ada.Text_IO; use Ada.Text_IO;
with Ada. Integer_Text_IO; use Ada. Integer_Text_IO;

procedure Arraydarray is

   type T_ai1D is array (1..3) of Integer;
   type T_ai2D_1 is array (1..2) of T_ai1D;

   ai2D_1: T_ai2D_1 := (others => (others => 0));

   type T_ai2D_2 is array (1..2, 1..3) of Integer;
   ai2D_2: T_ai2D_2:= (others => (others => 0));

begin


   ai2D_1 (2) (1):= 4;

   for I in 1..2 loop
      for J in 1..3 loop
         Put((ai2D_1(I)(J))); Put ("  ");
      end loop;
      New_Line;
   end loop;

   ai2D_1(2) := (1|3=> 2, others=>1); -- cambio de una única fila

   ai2D_2:= (2=> (1|3=> 2, others=>1), others =>(others=>5));
   ai2D_2:= (2=> (1|3=> 2, others=>1), others =>(others=><>)); --indeterminado

   for I in 1..2 loop
      for J in 1..3 loop
         Put((ai2D_2(I, J))); Put ("  ");
      end loop;
      New_Line;
   end loop;


end Arraydarray;
