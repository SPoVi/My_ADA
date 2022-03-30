generic
   N: Positive;
   type Item is private;
   Vinit : Item;
   with function Image(I : Item) return String;
   type ID is private;

package TamponOP is
   type Darray is array(1..N) of Item; -- aquí para que esté visible al declarar Cola de tipo tampón

   protected type Pila is
      entry Leer(I: out Item; O : Natural);
      procedure Escribir(I: in Item);
      procedure Mostrar_Pila;
   private  -- variables a las que debo acceder en exclusión mutua
      Data:  Darray := (Others => Vinit);
      Free: Natural := 2;
      function Empty return Boolean;
      procedure ShiftPila;

   end Pila;

   protected type Consigna is
      procedure Set(I:in Item);
      procedure Get(I:out Item);

   private
      Set_Point: Item := Vinit;
   end Consigna;

   protected type Operation_ID is
      procedure Set_Operation(I: in ID);
      procedure Get_Operation(I: out ID);

      private
      Operation : ID;
   end Operation_ID;

end TamponOP;
