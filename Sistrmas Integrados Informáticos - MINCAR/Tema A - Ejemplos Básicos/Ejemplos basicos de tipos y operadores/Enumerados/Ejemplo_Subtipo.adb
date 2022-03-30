--------------------------------------------------------------------------------
-- FICHERO     : Ejemplo_Subtipos.adb
-- COMETIDO    : Ejemplo de declaraciones de subtipos
-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------

with ada.text_IO ; use ada.text_IO ;
with ada.Integer_text_IO ; use ada.Integer_text_IO ;

procedure Ejemplo_Subtipo is
  subtype T_spDiaAño is Positive range 1..365 ; -- Nuevo subtipo Positive T_spDiaAño
  subtype T_spDiaMes is Positive range 1..31 ;  -- Nuevo subtipo Positive T_spDiaMes
   
   
  spDiaAño : T_spDiaAño ; -- Declaración de variable de tipo T_spDiaAño;
  spDiaMes : T_spDiaMes ; -- Declaración de variable de tipo T_spDiaMes;
begin
  spDiaAño := 100 ; 
  spDiaMes := spDiaAño ; -- Incorrecto, se trata de asignar el valor 110 a spDiaMes
  spDiaMes := 20 ;  
  spDiaAño := spDiaMes ; -- Correcto, asigna el valor 20 a spDiaAño
   
  Put ("Introducir día del año: ") ;
  Get (spDiaAño) ;       -- Posible excepción.. Error si usuario escribe un valor fuera del rango
  spDiaMes := spDiaAño ;            -- Posible excepción. Error si spDiaAño vale más de 31
end Ejemplo_Subtipo ;

