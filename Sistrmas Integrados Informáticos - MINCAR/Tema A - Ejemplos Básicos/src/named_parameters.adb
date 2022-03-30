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
with By_Default_Example;

procedure named_parameters is
   --declaraciones
   procedure By_Default_Example (A, B: in Integer := 0) is

   begin
      null;

   end By_Default_Example;

begin

   -- instrucciones
   By_Default_Example (5, 7);      -- A = 5, B = 7
   By_Default_Example (5);         -- A = 5, B = 0
   By_Default_Example;             -- A = 0, B = 0
   By_Default_Example (B => 3);    -- A = 0, B = 3
   By_Default_Example (1, B => 2); -- A = 1, B = 2


end named_parameters;

--------------------------------------------------------------------------------
-- In the first statement, a "regular call" is used (with positional association);
-- the second also uses positional association but omits the second parameter to
-- use the default; in the third statement, all parameters are by default;
-- fourth statement uses named association to omit the first parameter; finally,
-- the fifth statement uses mixed association, here the positional parameters
 --have to precede the named ones.

-- Note that the default expression is evaluated once for each formal parameter
-- that has no actual parameter. Thus, if in the above example a function would
-- be used as defaults for A and B, the function would be evaluated once in case
-- 2 and 4; twice in case 3, so A and B could have different values; in the
-- others cases, it would not be evaluated.
