
package TamponOP is
   type Tampon is array(1..10) of Float;

   protected type Tampon_Circular is

      entry Anyadir(I: in Float); -- operación protegida
      entry Sacar (I: out Float); -- operación protegida
      procedure SacarN (I: out Tampon);

   private  -- variables a las que debo acceder en exclusión mutua
      Cola:  Tampon;
      Primero, Ultimo : Integer := 1;
      Contador: Integer:=0;
   end Tampon_Circular;
end TamponOP;
