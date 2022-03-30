procedure lógicos is
   type T_aboValores is array (1..3) of Boolean;
   aboValoresA: T_aboValores := (True, False, False);
   aboValoresB: T_aboValores := (True, True, False);

   aboRdo:  T_aboValores;

   type T_aiValores is array (Integer range <>) of Boolean;
   aibo1: T_aiValores(1..3):= (True, False, False);
   aibo2: T_aiValores(1..3):=(True, True, False);
   aiboRdo: T_aiValores(1..3);

begin
   aboRdo:= aboValoresA or aboValoresB;	-- aboRdo:= (True, True, False);
   aboRdo:= aboValoresA and aboValoresB;	-- aboRdo:= (True, False, False);
   aboRdo:= aboValoresA xor aboValoresB;	-- aboRdo:= (False, True, False);

   aiboRdo:= aibo1 or aibo2; -- mismo tamaño
end lógicos;
