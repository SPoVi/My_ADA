-- librerias
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure T2P6 is
   -- declaraciones
    iPesoOnzas, iPesoLibras, iPesoTotal: Integer;
    fPesoKg: Float;



begin
   -- instrucciones

   -- Entrada de datos


   New_line ;
   Put ("Introducir peso en Onzas: ") ;
   Get (iPesoOnzas) ;
   New_Line ;

   New_line ;
   Put ("Introducir peso en Libras: ") ;
   Get (iPesoLibras) ;
   New_Line ;

   -- Calculos

   -- Conversion de Onzas a Libras
   -- 1 libra son 16 onzas
   iPesoTotal := (iPesoOnzas / 16) + iPesoLibras;
   -- Conversion de Libras a Kg
   -- 1 libra son 0.4536 Kg
   fPesoKg := 0.4536 * Float(iPesoTotal);



   -- Generar informe. Mostrar datos por pantalla.

   Put_line ("INFORME DE RESULTADOS") ;
   New_line ;
   put ("Onzas: ") ;
   Put(iPesoOnzas) ; New_Line ;
   put ("Libras: ") ;
   Put(iPesoLibras) ; New_Line ;
   put ("Equivalente en Kg: ") ;
   Put(fPesoKg) ; New_Line ;
   null;

end T2P6;
