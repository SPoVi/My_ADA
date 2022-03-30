-- Buffer FIFO usando tipo circular
generic
   N: Positive;
   type Item is private;

package tampon is
   type Index is mod 10; -- tamano fijo igual a 10 porque mod requiere una static constant o named number
   subtype Counter is Natural range 0..N;
   type Buffer_Store is array (Index) of Item;

   protected type Tampon_Circular is
      entry Put (X: in Item); -- operacion protegida
      entry Get (X: out Item); -- operacion protegida
   private
      First: Index := Index'First;
      Last: Index := Index'Last;
      Number: Counter := 0;
      Store: Buffer_Store;
   end Tampon_Circular;
end tampon;
