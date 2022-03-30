--------------------------------------------------------------------------------
-- FICHERO     : T2P4_Rakel.adb
-- COMETIDO    : Conversion caracter a entero
-- AUTOR       : Sergio Pons
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 27-10-2019 - Final = 27-10-2019
--------------------------------------------------------------------------------
-- ENUNCIADO
-- 4 .Supongamos que la variable T contiene un caracter entre 0 y 9.
-- Escribe una sentencia que realize la converion de T a un entero de rango 0..9
-- y lo asigne a una variable de tipo entero.

-- SOLUCION
-- Some_Integer_Variable := Some_Integer_Type'Value ((1 => Character_Variable));
-- iNum := Integer'Value((1=>T));
--------------------------------------------------------------------------------
-- librerias

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Numerics.Discrete_Random; -- paquete generico

procedure T2P4_Rakel is
-- declaraciones
   -- Subtipo de caracter acotado a numericos
   subtype T_sbNum is Character range '0' .. '9';
   -- Paquete para operar con el nuevo subtipo
   package Random_Char_Num is new Ada.Numerics.Discrete_Random(T_sbNum);
   use Random_Char_Num;

   -- Declaracion de variables
   T : T_sbNum;                     -- caracter numerico
   G : Random_Char_Num.Generator;   -- Lista de valores random acotados (0..9)
   iNum : Integer range 0..9;       -- variable entera acotada (0..9)

begin
-- instrucciones
   -- Reset semilla generador
   Random_Char_Num.Reset(G);

   -- Generar caracter aleatorio
   T := Random_Char_Num.Random(G);
   Put_Line("Caracter aleatorio creado (0..9)");

   -- Conversion
   iNum := Integer'Value((1=>T));

   -- Mostrar por pantalla el resultado
   Put_Line("EL caracter generado " & T & " se corresponde con el numero: "
              & Integer'Image(iNum));



end T2P4_Rakel;
