--------------------------------------------------------------------------------
-- FICHERO     : FirstLastLargeDigits.adb
-- COMETIDO    : Programa para mostrar el uso de atributos
-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
with Ada.Text_IO ;           use  Ada.Text_IO ;          -- Leer y escribir texto
with Ada.Integer_Text_IO ;   use Ada.Integer_Text_IO ;
with Ada.Float_Text_IO ;     use Ada.Float_Text_IO ;


procedure FirstLastSmallLargeDigits is

   iNumInteger : Integer ;
--   iNumLongInt : LongInt ;
--   iNumLongLongInt : LonLongInt ;
   fNumFloat : Float ;


begin
   New_line ;
   iNumInteger := Integer'Size ;
   put ("Integer'Size  = ") ;
   put (iNumInteger) ; New_Line ;
   iNumInteger := Integer'First ;
   put ("Integer'First = ") ;
   put (iNumInteger) ; New_Line ;
   iNumInteger := Integer'Last ;
   put ("Integer'Last  = ") ;
   put (iNumInteger) ; New_Line ;

   New_line ;
   iNumInteger := Float'Size ;
   put ("Float'Size    = ") ;
   put (iNumInteger) ; New_Line ;
      iNumInteger := Float'Digits ;
   put ("Float'Digits  = ") ;
   put (iNumInteger) ; New_Line ;


   fNumFloat := Float'First ;
   put ("Float'First   = ") ;
   put (fNumFloat) ; New_Line ;
   fNumFloat := Float'Last ;
   put ("Float'Last    = ") ;
   put (fNumFloat) ; New_Line ;

   fNumFloat := Float'Small ;
   put ("Float'Small   = ") ;
   put (fNumFloat) ; New_Line ;
   fNumFloat := Float'Large ;
   put ("Float'Large   = ") ;
   put (fNumFloat) ; New_Line ;

end FirstLastSmallLargeDigits ;
