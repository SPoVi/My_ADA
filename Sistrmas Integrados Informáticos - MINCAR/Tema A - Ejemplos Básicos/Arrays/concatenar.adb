with Ada.Text_IO; use Ada.Text_IO;

procedure concatenar is
   type T_afValores is array (Integer range <>) of Float;
   f1, f2: Float := 5.6;
   afValores_2: T_afValores(1..2);
   afValores_3: T_afValores(1..3):= (1.1,2.2,3.3);
   afValores_5: T_afValores(1..5);

   type T_af1 is array (1..2) of Float;
   type T_af2 is array (1..3) of Float;
   type T_af3 is array (1..5) of Float;

   af1: T_af1;
   af2: T_af2:= (0.0, 1.0, 2.0);
   af3: T_af3;

begin
   afValores_2:= f1 & f2;
   afValores_5:= afValores_2 & afValores_3;
   afValores_3:= f1 & afValores_2;

   af1:= f1 & f2;
   af3:= af2 & af1;		--Error de compilación : tipos incorrectos

   af2:= f1 & af1;		-- Error de compilación: tipos incorrectos
end concatenar;
