with Ada.Text_Io; use Ada.Text_Io;

procedure Agregado is
   type T_aboValores is array (1..4) of boolean;
   aboValores_1: T_aboValores:= (others => false);
   aboValores_2: T_aboValores:= (2 => true, others => false);
   --aboValores_3: T_aboValores:= (2 => true);

   type T_aiValores is array (1..2, 1..2) of Integer;
   aiValores_1: T_aiValores:= (others => (others=> 0));
   type T_aiValores1D is array (1..10) of Integer;
   aiValores_2: T_aiValores1D:= (1, 0, 1, others => 0);
begin
   for I in T_aboValores'Range loop
      Put (Boolean'Image(aboValores_1 (I))); Put ("  ");
   end loop;
   New_Line;
   for I in T_aboValores'Range loop
      Put (Boolean'Image(aboValores_2 (I))); Put ("  ");
   end loop;
   New_Line;

   aboValores_2:= (1|4 =>true, others => false);

   for I in T_aboValores'Range loop
      Put (Boolean'Image(aboValores_2 (I))); Put ("  ");
   end loop;
   New_Line;
   for I in T_aiValores1D'Range loop
      Put(Integer'Image(aiValores_2 (I))); Put ("  ");
   end loop;
   New_Line;

end Agregado;
