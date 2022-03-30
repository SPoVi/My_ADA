--------------------------------------------------------------------------------
-- FICHERO     : TiposDerivados.adb
-- COMETIDO    : Ejemplos de declaraciones de tipos derivados
-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
with text_IO ; use text_IO ;
with Ada.Text_IO; 

procedure TiposDerivados is    
 type  NuevoTipo_1  is new  Integer  range -10 .. 10 ;
 type  NuevoTipo_2  is range  -10   .. 10 ;       -- con tipos enteros
-- type  NuevoTipo_3  is range  -10.0 .. 10.0 ;   -- error
 type  NuevoTipo_4  is new  Integer ;
 type  NuevoTipo_5  is mod 5 ;
   
 -- Con tipos float
 type NuevoTipo_6 is  delta 0.001 range -10.0 .. 10.0 ;
 type NuevoTipo_7 is  delta 0.01  digits 16 range 0.0 .. 1234567890.0 ;
      
begin

   null ;
   
end TiposDerivados ;
