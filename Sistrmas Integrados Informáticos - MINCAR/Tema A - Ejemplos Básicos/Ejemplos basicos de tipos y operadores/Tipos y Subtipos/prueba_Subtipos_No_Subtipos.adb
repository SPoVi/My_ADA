--------------------------------------------------------------------------------
-- FICHERO     : prueba_Subtipos_No_Subtipos.adb
-- COMETIDO    : Diferencia entre declarar subtipos y no declararlos
-- AUTOR       : Fabi�n L�pez
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
with text_IO ; use text_IO ;
procedure prueba_Subtipos_No_Subtipos is
   subtype  T_spDiaMes  is Positive range 1..31; 	--  Nuevo subtipo Positive T_spDiaMes
   spDiaMes : T_spDiaMes;			--  Declaraci�n de variable de tipo T_spDiaMes;

   subtype  T_spDiaA�o  is Positive range 1 .. 365; 	--  Nuevo subtipo Positive T_spDiaA�o
   spDiaA�o : T_spDiaA�o;			--  Declaraci�n de variable de tipo T_spDiaA�o;

begin
   spDiaA�o := 100 ;
   spDiaMes := spDiaA�o ;	--  Incorrecto porque spDiaMes no puede almacenar el valor 100
   spDiaMes := 20 ;
   spDiaA�o := spDiaMes ;	--  Correcto  porque spDiaA�o si puede almacenar el valor 20
   iNum := Integer'Last ;
   put_line (Integer'Image(iNum)) ;

end prueba_Subtipos_No_Subtipos ;
