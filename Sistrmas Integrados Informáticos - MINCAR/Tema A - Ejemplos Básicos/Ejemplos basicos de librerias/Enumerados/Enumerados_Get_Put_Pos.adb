--------------------------------------------------------------------------------
-- FICHERO     : Enumerados_Get_Put_Pos.adb
-- COMETIDO    : Lectura y escritura de enumerados
-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
with Ada.Text_IO ;         use Ada.Text_IO ;
with Ada.Integer_Text_IO ; use Ada.Integer_Text_IO ;

 procedure  Enumerados_Get_Put_Pos  is

      type T_Mes is (Enero, Febrero, Marzo, Abril, Mayo, Junio, Julio, Agosto,
                                Septiembre, Octube, Noviembre, Diciembre ) ;

      package  DiasSemana_IO  is  new  Enumeration_IO  (T_Mes ) ;
      use  DiasSemana_IO ;                     -- Ejemplar del paquete genérico

      eMes       : T_Mes;

begin
     Put ("Escribe el nombre del mes: ") ;
     Get (eMes) ;
     New_Line ; 
     Put ("  El nombre del mes leido: ") ;
     Put (eMes) ; 
   New_line ;
   
     Put ("  El indice del mes leido: " ) ;
     Put (T_Mes'Pos (eMes), 0) ; 
     New_Line ;  
   
     Put ("  El numero del mes leido: " ) ;
     Put (T_Mes'Pos (eMes) + 1, 0) ; 
     New_Line ;
 
end Enumerados_Get_Put_Pos ;
