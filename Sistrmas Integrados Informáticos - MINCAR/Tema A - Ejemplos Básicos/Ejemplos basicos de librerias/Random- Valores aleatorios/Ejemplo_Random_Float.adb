--------------------------------------------------------------------------------
-- FICHERO     : Ejemplo_random_Float.adb
-- COMETIDO    : Generar valores float aleatoriamente
-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
with Ada.Text_IO ;      use Ada.Text_IO ;
with Ada.Float_Text_IO; use Ada.Float_Text_IO ;

with Ada.Numerics.Float_Random ;
use  Ada.Numerics.Float_Random ;  -- No es un paquete generico

procedure Ejemplo_random_Float is
   G : Generator ;
   fValorAleatorio : Float ;
begin
   Reset (G) ; -- Inicializar la semilla

   put_line ("10 numeros Float, aleatorios:") ;
   
   for i in 1..10 loop
       fValorAleatorio := Random (G) ;
       put (fValorAleatorio, 10, 4, 0) ; 
	New_line ;
   end loop ;
end Ejemplo_random_float ;
