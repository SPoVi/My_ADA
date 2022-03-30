--------------------------------------------------------------------------------
-- FICHERO     : Ejemplo_TipoDerivado.adb
-- COMETIDO    : 
-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
procedure Ejemplo_TipoDerivado is
   type T_dnNum_Manzanas is new Natural; 	  --  Nuevo tipo derivado T_tdnNum_Manzanas
   type T_dnNum_Naranjas is new Natural range 0..100;   -- También se puede definir rango
   
   dnNum_Manzanas : T_dnNum_Manzanas;
   dnNum_Naranjas : T_dnNum_Naranjas;
   
   iTotalInt   : Integer;
   iTotalNatur : Natural;
begin
   dnNum_Manzanas := dnNum_Naranjas;	  -- Error compilación
   iTotalInt      := dnNum_Manzanas ;	  -- Error compilación
   iTotalInt      := iTotalNatur ;

   dnNum_Manzanas := T_dnNum_Manzanas ( iTotalInt ) ;		-- Correcto
   dnNum_Manzanas := T_dnNum_Manzanas ( dnNum_Naranjas ) ;	-- Correcto

   iTotalInt := Integer (dnNum_Manzanas)  + Integer (dnNum_Naranjas) ;        -- Correcto
end ejemplo_TipoDerivado;
