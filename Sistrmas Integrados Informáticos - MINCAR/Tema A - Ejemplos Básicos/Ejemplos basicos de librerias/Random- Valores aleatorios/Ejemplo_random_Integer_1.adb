--------------------------------------------------------------------------------
-- FICHERO     : Ejemplo_random_Integer_1.adb
-- COMETIDO    : Generar valores aleatorios de tipo Integer
-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
with Ada.Text_IO ;         use  Ada.Text_IO ;
with Ada.Integer_Text_IO ; use Ada.Integer_Text_IO ;
with Ada.Numerics ;        use Ada.Numerics ;
with Ada.Numerics.Discrete_Random ;

procedure Ejemplo_random_Integer_1 is
   
   package Random_Integer is new Discrete_Random(Integer) ; 
   use Random_Integer ;
   
   G: Generator ;

   iValorAleatorio: Integer ;

begin
   put_line ("sin inicializar la semilla") ;
   New_line ;
   -- Reset (G) ; -- Inicializar la semilla

   
   put_line ("10 numeros Integer, aleatorios:") ;

   for I in 1..10 loop
      iValorAleatorio := Random (G) ;
      Put (iValorAleatorio) ;
      New_line ;
   end loop ;

end Ejemplo_random_Integer_1 ;







