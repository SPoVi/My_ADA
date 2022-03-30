--------------------------------------------------------------------------------
-- FICHERO     : SubtiposEnumerados_5.adb
-- COMETIDO    : Comprobar diferencia entre declarar tipo y subtipos
-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
with Ada.Text_IO ;              -- Leer y escribir texto
use  Ada.Text_IO ;

procedure SubtiposEnumerados_5 is

   type T_DiasSemana     is (lunes, martes, miercoles, jueves, viernes, sabado, domingo);
   subtype T_FinSemana   is  T_DiasSemana range  viernes .. domingo ;
   subtype T_Laborables  is  T_DiasSemana range  lunes .. viernes ;

   package T_D_IO   is new  Enumeration_io (T_DiasSemana) ;  use T_D_IO ;

    eDia       : T_DiasSemana ;
    eDiaFin  : T_FinSemana ;
   eDiaLab : T_Laborables ;

begin
   eDia       := Viernes ;
   eDiaLab := eDia ;
   put (eDiaLab) ; new_line ;                                -- put está en la librería T_D_IO

   eDiaFin := Viernes ;
   eDia       := eDiaFin ;
   put (eDia) ; new_line ;                                      -- put está en la librería T_D_IO

   eDiaLab := Viernes ;
   eDiaFin  := eDiaLab ;
   put (eDiaFin) ; new_line ;                                -- put está en la librería T_D_IO

end SubtiposEnumerados_5 ;
