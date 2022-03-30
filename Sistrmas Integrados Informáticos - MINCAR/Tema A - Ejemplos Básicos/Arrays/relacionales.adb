with Ada.Text_IO; use Ada.Text_IO;

procedure relacional is
   type T_aiValores is array (Integer range <>) of Integer;

   ai1: T_aiValores(1..4):= (1, 2, 3, 4);
   ai2: T_aiValores(1..4):= (1, 2 ,4, 3);
   ai3: T_aiValores(1..2):=(1, 2);

   type T_af is array  (1..3) of Float;

   af1: T_af (1..3):= (0.0, 1.0, 2.0) ;
   af2: T_af (1..3):= (0.0, 1.0, 2.0);
   af3: T_af (1..3):= (0.0, 2.0, 0.0);
   boRdo: boolean;

begin
   boRdo:= af1 = af2; Put (Boolean'Image(boRdo));
   boRdo:= af1 /= af2; Put (Boolean'Image(boRdo));
   boRdo:= ai1 < ai2; Put (Boolean'Image(boRdo));
   boRdo:= ai1 < ai3; Put (Boolean'Image(boRdo));
   boRdo:= ai1 <= ai2; Put (Boolean'Image(boRdo));

end relacional;
