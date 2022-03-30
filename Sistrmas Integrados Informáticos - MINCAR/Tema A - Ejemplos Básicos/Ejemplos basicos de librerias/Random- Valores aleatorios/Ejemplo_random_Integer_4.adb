--------------------------------------------------------------------------------
-- FICHERO     : Ejemplo_random_Integer_3.adb
-- COMETIDO    : Generar valores aleatorios dentro de un rango
--               Creando un nuevo subtipo
-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
with Ada.Text_IO ;           use Ada.Text_IO;
with Ada.Integer_Text_IO ;   use Ada.Integer_Text_IO;
with Ada.Numerics ;          use Ada.Numerics;
with Ada.Numerics.Discrete_Random ;

procedure Ejemplo_random_Integer_4 is
   subtype tiDado is integer range 1..6 ;

   package Random_Dado is new Discrete_Random(tiDado);
   use Random_Dado;

   G: Generator;
   iValorAleatorio: tiDado;
begin
   Reset (G) ; -- Inicializar la semilla

   put_line ("10 numeros Integer, aleatorios en el rango 1..6:") ;

   for i in 1..15 loop
      iValorAleatorio:= Random (G);  -- valor aleatorio entre 1 y 6
      put (i) ; put (": ") ;
      put (iValorAleatorio) ; New_line ;
   end loop ;

end Ejemplo_random_Integer_4;
