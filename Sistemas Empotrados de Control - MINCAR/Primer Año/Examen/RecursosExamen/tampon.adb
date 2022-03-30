-- Buffer FIFO usando tipo circular
package body tampon is
protected body Tampon_Circular is
   entry Put (X: in Item) when Number < N is
   begin
      Last := Last + 1;
      Store (Last) := X;
      Number := Number + 1;
   end Put;

   entry Get (X: out Item) when Number > 0 is
   begin
      X := Store (First);
      First := First + 1;
      Number := Number -1;
   end Get;
   end Tampon_Circular;
end tampon;
