--------------------------------------------------------------------------------
-- FICHERO     : SiCircular.adb
-- COMETIDO    : Declaración y uso de un tipo integer circular
-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
with Ada.Text_IO; -- Librerias
use Ada.Text_IO;

procedure SiCircular is

   type IntegerCircular is  mod Integer'Last ;     -- Declaración de un nuevo tipo

   cEspera : Character ;                               --  Declaraciones

   iNum : IntegerCircular ;                        -- Declaracion de variable
begin
   iNum := IntegerCircular'Last ;                        -- 2147483646

   Put ("Valor actual (maximo): ") ;
   Put_Line (IntegerCircular'Image(iNum));   -- 2147483646

   Put ("      Siguiente valor: ") ;
   iNum := iNum  + 1 ;                                   -- vale 0 por ser un rango circular

   Put_Line (IntegerCircular'Image(iNum));   -- 0

   get_Immediate (cEspera) ;

end SiCircular;
