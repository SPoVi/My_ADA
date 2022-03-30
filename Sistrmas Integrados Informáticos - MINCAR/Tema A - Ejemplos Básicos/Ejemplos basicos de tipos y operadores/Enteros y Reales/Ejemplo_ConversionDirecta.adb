--------------------------------------------------------------------------------
-- FICHERO     : Ejemplo_ConversionDirecta.adb
-- COMETIDO    : Convertir Integer a Float y viceversa
-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
with Ada.Text_IO ;         use Ada.Text_IO ;        -- Skip_Line
with Ada.Integer_Text_IO ; use Ada.Integer_Text_IO ;
with Ada.Float_Text_IO ;   use Ada.Float_Text_IO ;

procedure Ejemplo_ConversionDirecta  is

   iNumInt   : Integer ;
   fNumReal : Float ;
begin
   Put ("Introducir un valor entero         : ") ;
   Get (iNumInt) ;
   Skip_Line ;
   Put ("Valor leido -> como entero         : ") ;
   Put (iNumInt) ;
   New_line ;
   fNumReal := Float (iNumInt) ;         -- Convierte a real
   Put ("Valor leido -> convertido a float  : ") ;
   Put (fNumReal) ;
   New_Line (2);

   Put ("Introducir un valor real           : ") ;
   Get (fNumReal) ;
   Skip_Line ;
   Put ("Valor leido -> como real           : ") ;
   Put (fNumReal) ;
   New_line ;
   iNumInt := Integer (fNumReal) ;  -- Redondea y convierte a Integer
   Put ("Valor leido -> convertido a entero : ") ;
   Put (iNumInt) ;

end Ejemplo_ConversionDirecta ;
