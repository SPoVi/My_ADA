--------------------------------------------------------------------------------
-- FICHERO     : NoCircular.adb
-- COMETIDO    : Uso de un tipo integer circular
-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
with Ada.Text_IO; -- Librerias
Use  Ada.Text_IO ;

procedure NoCircular is
   cEspera : Character ;
   iNum    : Integer ;                     -- Declaracion de variable
begin
   iNum := Integer'Last ;                        -- 2147483647

   Put ("Valor actual (maximo): ") ;
   Put_Line (Integer'Image(iNum));   -- 2147483647

   Put ("      Siguiente valor: ") ;
   iNum := iNum + 1 ;                           -- Al compilar Warning valor fuera del rango
                                                -- Al ejecutar Constraint_error
   Put_Line (Integer'Image(iNum)) ;

   get_Immediate (cEspera) ;
end NoCircular;
