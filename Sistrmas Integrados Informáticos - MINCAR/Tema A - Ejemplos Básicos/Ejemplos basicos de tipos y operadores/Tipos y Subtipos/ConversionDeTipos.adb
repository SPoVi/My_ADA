--------------------------------------------------------------------------------
-- FICHERO     : ConversionDeTipos.adb
-- COMETIDO    : Conversi�n expl�cita de tipos de datos
-- AUTOR       : Fabi�n L�pez
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
with ada.text_IO ; use ada.text_IO ;

procedure ConversionDeTipos is

   type T_dnNum_Manzanas is new Natural ; 	--  Nuevo tipo derivado T_tdnNum_Manzanas
   type T_dnNum_Naranjas is new Natural range 0..100 ;   -- Tambi�n se puede definir rango
   dnNum_Manzanas : T_dnNum_Manzanas ;
   dnNum_Naranjas : T_dnNum_Naranjas := 0 ;
   iTotal : Integer := 0 ;
begin
   dnNum_Manzanas := dnNum_Naranjas ;	-- Error compilaci�n
   dnNum_Manzanas := iTotal ;		-- Error compilaci�n

   dnNum_Manzanas := T_dnNum_Manzanas ( iTotal ) ;		-- Correcto
   dnNum_Manzanas := T_dnNum_Manzanas ( dnNum_Naranjas ) ;	-- Correcto


   iTotal := Integer (dnNum_Manzanas)  + Integer(dnNum_Naranjas) ;

end ConversionDeTipos ;
