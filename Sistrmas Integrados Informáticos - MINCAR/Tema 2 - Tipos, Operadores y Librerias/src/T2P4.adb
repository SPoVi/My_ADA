--------------------------------------------------------------------------------
-- FICHERO     : T2P4.adb
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
-- Obtener el valor ASCII del caracter introducido y calcular la diferencia del
-- valor ASCII de cero.
--------------------------------------------------------------------------------

-- librerias
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Numerics.Discrete_Random;
with Ada.Strings.Bounded; use Ada.Strings.Bounded;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

procedure T2P4 is
   -- declaraciones

   -- crea subtypo
   -- un subtipo es un tipo acotado
   subtype T_sbNum09 is Character range '0'..'9';

   -- crea paquete de subtipo
   -- creas una nueva clase que hereda de otra pero que solo funcionará con
   -- el tipo de variable que le has instanciado (creado anteiormente)
   package Rand_Char_09 is new Ada.Numerics.Discrete_Random(T_sbNum09);
   use Rand_Char_09;

   -- Variables
   cT : T_sbNum09;
   Char_Position, iT: Integer;

   -- Generador aleatorio
   -- Crea una lista de valores comprendidos entre los posibles del tio (subtipo)
   G : Rand_Char_09.Generator;


begin
   -- instrucciones

   -- Reseteo de la semilla del generador
   Rand_Char_09.Reset(G);

   -- Generar valor aleatorio
   cT := Random(G);

   -- Mostrar por pantalla
   Put_Line("Caracter numerico generado: " &cT);


   -- CONVERSION
   -- Calcula la poscion en ASCII del caracter generado
   Char_Position := Character'Pos(cT);
   -- el valor para el carcter 0 es 48, su diferencia con el caracter obetenido
   -- es el valor numerico del caracter.
   iT := Char_Position - 48;
   Put_Line("El valor del caracter " & cT & " en entero es" & Integer'Image(iT));


end T2P4;
