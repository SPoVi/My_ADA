with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

package body TamponOP is
   -- Objeto protegido de la Pila
   -- Leer/Escribir, cuando se llena se desplaza hacia atras.
   protected body Pila is
      function Empty return Boolean is
      begin
         return Free = 0;
      end Empty;

      procedure ShiftPila is
         index : Integer := Data'Length - 4;
      begin
         Free := 1;
         for I in index..Data'Length-1 loop
            Escribir(Data(I));
         end loop;
      end ShiftPila;

      entry Leer(I: out Item ; O : in Natural) when Empty = False is
         Offset : Natural;
      begin
         Offset := Free-O-1;
         if Offset <0 then
            Offset := 0;
         end if;
         I := Data(Offset);
      end Leer;

      procedure Escribir(I: in Item) is
      begin
         if Free = Data'Length then
            ShiftPila;
         end if;
         Data(Free):= I;
         Free := Free + 1;
      end Escribir;

      procedure Mostrar_Pila is
         valor : Item;
         aux : Float;
      begin
         for i in 1..Free-1 loop
            valor:=Data(i);
            aux := Float'Value(Image(valor));
            Put(aux,3,1,0);
            Put(' ');
         end loop;
         new_line;
      end Mostrar_Pila;


   end Pila;

   -- Objeto protegido de Consigna
   -- Permite crear consignas de acceso en exclusion mutua
   protected body Consigna is
      procedure Set(I : in Item) is
      begin
         Set_Point := I;
      end Set;

      procedure Get(I : out Item) is
      begin
         I := Set_Point;
      end Get;

   end Consigna;

   -- Objeto protegido de Operacion
   -- Permite crear operaciones de acceso en exclusion mutua
   protected body Operation_ID is
      procedure Set_Operation(I: in ID) is
      begin
         Operation := I;
      end Set_Operation;

      procedure Get_Operation(I: out ID) is
      begin
         I:= Operation;
      end Get_Operation;
   end Operation_ID;

   begin
   null;
   end TamponOP;
