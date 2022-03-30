--------------------------------------------------------------------------------
-- FICHERO     : TiposIntegerFloat.adb
-- COMETIDO    : Literales Integer y Float
-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------

with text_IO ; use text_IO ;

procedure TiposIntegerFloat is
   iNumInt   : Integer ;
   fNumFloat : Float ;

begin
   iNumInt := 12 ;
   iNumInt := 2#10# ;
   iNumInt := 8#12# ;
   iNumInt := 16#12# ;

   iNumInt := 19E02 ;
   iNumInt := 190E+1 ;
   iNumInt := 1_900E0 ;

   fNumFloat := 12.0 ;
   fNumFloat := 2#1.0# ;
   fNumFloat := 8#1.2# ;
   fNumFloat := 16#1.2# ;

   fNumFloat := 19.0E02 ;
   fNumFloat := 1.90E+3 ;
   fNumFloat := 1_900.0E0 ;
end TiposIntegerFloat ;
