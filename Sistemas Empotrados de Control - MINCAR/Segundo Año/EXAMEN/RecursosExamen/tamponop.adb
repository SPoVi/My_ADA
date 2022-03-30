package body TamponOP is

   protected body Tampon_Circular is
      entry Anyadir(I: in Float) when Contador < 10 is
      begin
         Cola(Primero) := I;
         Primero := (Primero mod 10) + 1;
         Contador :=  Contador + 1;
      end Anyadir;

      entry Sacar (I: out Float) when Contador > 0 is
      begin
         I := Cola(Ultimo);
         Ultimo := (Ultimo mod 10) +1;
         Contador :=  Contador - 1;
      end Sacar;

      procedure SacarN (I: out Tampon) is
      begin
         I := Cola;
         Contador:=0;
         Primero:=1;
      end SacarN;

      end Tampon_Circular;

   end TamponOP;
