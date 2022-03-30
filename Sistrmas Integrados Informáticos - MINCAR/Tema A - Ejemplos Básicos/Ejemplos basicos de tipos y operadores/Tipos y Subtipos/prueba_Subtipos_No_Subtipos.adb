--------------------------------------------------------------------------------
-- FICHERO     : prueba_Subtipos_No_Subtipos.adb
-- COMETIDO    : Diferencia entre declarar subtipos y no declararlos
-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
with text_IO ; use text_IO ;
procedure prueba_Subtipos_No_Subtipos is
   subtype  T_spDiaMes  is Positive range 1..31; 	--  Nuevo subtipo Positive T_spDiaMes
   spDiaMes : T_spDiaMes;			--  Declaración de variable de tipo T_spDiaMes;

   subtype  T_spDiaAño  is Positive range 1 .. 365; 	--  Nuevo subtipo Positive T_spDiaAño
   spDiaAño : T_spDiaAño;			--  Declaración de variable de tipo T_spDiaAño;

begin
   spDiaAño := 100 ;
   spDiaMes := spDiaAño ;	--  Incorrecto porque spDiaMes no puede almacenar el valor 100
   spDiaMes := 20 ;
   spDiaAño := spDiaMes ;	--  Correcto  porque spDiaAño si puede almacenar el valor 20
   iNum := Integer'Last ;
   put_line (Integer'Image(iNum)) ;

end prueba_Subtipos_No_Subtipos ;
