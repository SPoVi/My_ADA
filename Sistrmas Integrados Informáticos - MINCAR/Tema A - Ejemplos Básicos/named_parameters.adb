--------------------------------------------------------------------------------
-- FICHERO     : named_parameters.adb
-- COMETIDO    : Ver la fucion de =>
-- AUTOR       : Sergio Pons
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 27-10-2019 - Final = 27-10-2019
--------------------------------------------------------------------------------
--libraries
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure named_parameters is
   --declaraciones
   function By_Default_Example (A, B: in Integer := 0);

begin

   -- instrucciones

   By_Default_Example(5,7);
   By_Default_Example(5);
   By_Default_Example;
end named_parameters;
