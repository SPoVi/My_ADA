--------------------------------------------------------------------------------
-- FICHERO     : subtipos_enumerados_4.adb
-- COMETIDO    : Subtipos enumerados y paquetes
-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
with Ada.Text_IO ;              -- Leer y escribir texto
use  Ada.Text_IO ;

procedure subtipos_enumerados_4 is

   type T_DiasSemana is (lunes, martes, miercoles, jueves, viernes, sabado, domingo);

   subtype T_FinSemana  is T_DiasSemana range viernes .. domingo ;
   subtype T_Laborables is T_DiasSemana range lunes .. viernes ;

   package T_D_IO is new  Enumeration_io (T_DiasSemana) ;  use T_D_IO ;
--   package T_DF_IO is new Enumeration_io (T_FinSemana)  ;  use T_DF_IO ;
--   package T_DL_IO is new Enumeration_io (T_Laborables) ;  use T_DL_IO ;

   eDiaFin : T_FinSemana ;
   eDiaLab : T_Laborables ;
   eDia    : T_DiasSemana ;

begin

   eDia    := Lunes ;
   eDiaLab := eDia ;                   -- T_Laborables (eDia) ;
   put (eDiaLab) ; new_line ;

   eDiaLab := Lunes ;
   eDia    := eDiaLab ;                 -- T_DiasSemana (eDiaLab) ;
   put (eDia) ; new_line ;

   eDiaLab := Viernes ;
   eDiaFin := eDialab ;                 -- T_FinSemana (eDiaLab) ;
   put (eDiaFin) ; new_line ;

end subtipos_enumerados_4 ;
