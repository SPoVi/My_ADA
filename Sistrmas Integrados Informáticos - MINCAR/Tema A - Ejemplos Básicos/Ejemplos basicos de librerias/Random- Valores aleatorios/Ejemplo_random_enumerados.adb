--------------------------------------------------------------------------------
-- FICHERO     : Ejemplo_random_enumerados.adb
-- COMETIDO    : Generar valores aleatorios de un tipo enumerado
-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
with Ada.Text_IO ;              use Ada.Text_IO ;
with Ada.Integer_Text_IO ; 	use Ada.Integer_Text_IO ;
with Ada.Numerics ; 	        use  Ada.Numerics ;
with Ada.Numerics.Discrete_Random ;	-- Es un paquete genérico


procedure Ejemplo_random_enumerados is
    
   type T_DiasSemana is (lunes, martes, miercoles, jueves, viernes, sabado, domingo);

   package T_D_IO is new  Enumeration_io (T_DiasSemana) ; -- para utilizar put y get
   use T_D_IO  ;
   
    -- Creación de un ejemplar del paquete genérico para generar valores aleatorios
   package Random_Semana is new Discrete_Random(T_DiasSemana);
   use Random_Semana;
   
   G : Generator ;                  	-- G : Random_Dado.Generator ;
   eValorDia : T_DiasSemana ;
begin
   Reset (G);                       -- Inicializar la semilla de números aleatorio:
     Put_Line (" Los valores aleatorio generados son: ") ;

     for i in 1.. 5 loop
            eValorDia  :=  Random (G) ;        -- Genera un valor aleatorio entero entre 1 y 6
            put (eValorDia) ;
			New_line ;
     end loop ;
end Ejemplo_random_enumerados ;
