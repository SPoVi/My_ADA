procedure irrestring is
   type T_aiIrrest_1 is array (Integer range <>) of Integer;
   type T_aiIrrest_2 is array (Integer range <>) of Integer;

   aiIrrest_1A, aiIrrest_1B : T_aiIrrest_1 (1..10);
   aiIrrest_2A, aiIrrest_2B : T_aiIrrest_1 (11..20);
   aiIrrest_3A : T_aiIrrest_2 (11..20):=(others=>0);
   -- aiIrrest_3A : T_aiIrrest_1:= (1, 1, 1, others=> 0);  -- Error compi

   --type T_ai2D is array (1..10, Integer range <>) of Integer;  -- Error compi



begin
   aiIrrest_1A:= (others=> 2);
   aiIrrest_2A:=aiIrrest_1A;
   aiIrrest_2B:= T_aiIrrest_1(aiIrrest_3A);

end irrestring;
