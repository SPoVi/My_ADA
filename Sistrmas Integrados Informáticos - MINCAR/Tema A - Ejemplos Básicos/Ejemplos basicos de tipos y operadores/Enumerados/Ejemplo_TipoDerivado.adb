--------------------------------------------------------------------------------
-- FICHERO     : Ejemplo_TipoDerivado.adb
-- COMETIDO    : Ejemplo de tipos derivados
-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------

with ada.text_IO ; use ada.text_IO ;

procedure Ejemplo_TipoDerivado is
  type T_dnNum_Manzanas is new Natural ;     -- Nuevo tipo derivado T_dnNum_Manzanas
  type T_dnNum_Naranjas is new Natural range 0..100 ; -- También se puede def. rango
  
  dnNum_Manzanas : T_dnNum_Manzanas ;
  dnNum_Naranjas : T_dnNum_Naranjas ;
       iTotalInt : Integer ;
     iTotalNatur : Natural ;                     -- Natural es un subtipo de Integer
begin
  dnNum_Manzanas := dnNum_Naranjas ;	            -- Error compilación
  dnNum_Manzanas := iTotal ;                             -- Error compilación 
  dnNum_Manzanas := T_dnNum_Manzanas(dnNum_Naranjas) ; -- Correcto 
  dnNum_Manzanas := T_dnNum_Manzanas(iTotalInt) ;      -- Posible excepción
  iTotalInt      := iTotalNatur ;      -- Correcto: Natural es un subtipo de Integer
  
   dnNum_Manzanas  := T_dnNum_Manzanas ( iTotalInt)  ;		           -- Correcto
   dnNum_Manzanas  := T_dnNum_Manzanas ( dnNum_Naranjas )  ;	           -- Correcto 

   iTotalInt :=   Integer ( dnNum_Manzanas )  ;	                                                -- Correcto 
   iTotalInt := iTotalInt  + Integer ( dnNum_Naranjas )  ;                                             -- Correcto 
   -- Equivalente a: 
   iTotalInt  :=   Integer ( dnNum_Manzanas )  +  Integer ( dnNum_Naranjas )  ;      -- Correcto 
end Ejemplo_TipoDerivado ;

