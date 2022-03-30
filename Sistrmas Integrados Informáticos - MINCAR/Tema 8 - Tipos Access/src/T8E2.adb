--------------------------------------------------------------------------------
-- FICHERO     : T8E2.adb
-- COMETIDO    : Accces. Punteros.
-- AUTOR       : Sergio Pons
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 05-12-2019 - Final =
--------------------------------------------------------------------------------
-- ENUNCIADO
-- 2. Escribir un programa que lea dos enteros positivos y calcule el cociente
-- y el resto de la  división  del  primero  por  el  segundo  utilizando  el
-- método  de  las  sustracciones sucesivas.
-- Realice un subprograma que realice dicho cálculo.
-- NOTA: En lugar de utilizar  variables de tipo entero directamente para el
-- DIVIDENDO y el DIVISOR, declare variables de tipo Access para acceder a ellas.
--------------------------------------------------------------------------------


-- librerias

type pInt is access all Integer;
type pIntConstant is access constant Integer;




procedure Dividir (iDividiendo, iDivisor: access constant Integer;
                   iCociente, iResto: access Integer) is
begin
   iResto.all := iDividiendo
