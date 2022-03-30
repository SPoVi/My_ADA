--------------------------------------------------------------------------------
-- FICHERO     : TiposEnumerados_4.adb
-- COMETIDO    : Comprobar diferencia entre declarar tipo y subtipos
-- AUTOR       : Fabi�n L�pez
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
with Ada.Text_IO ;              -- Leer y escribir texto
use  Ada.Text_IO ;
procedure TiposEnumerados_4 is

   type T_DiasSemana is (lunes, martes, miercoles, jueves, viernes, sabado, domingo) ;
   type T_FinSemana   is new T_DiasSemana range viernes .. domingo ;
   type T_Laborables   is new T_DiasSemana range lunes .. viernes ;

   package T_D_IO   is new  Enumeration_io (T_DiasSemana) ;  use T_D_IO   ;
   package T_DF_IO is new  Enumeration_io (T_FinSemana)  ;   use T_DF_IO ;
   package T_DL_IO is new  Enumeration_io (T_Laborables) ;    use T_DL_IO ;

   eDia       : T_DiasSemana ;
   eDiaFin  : T_FinSemana ;
   eDiaLab : T_Laborables ;
   
begin   
   eDia       := Viernes ;  
   eDiaLab := T_Laborables (eDia) ;                -- Conversi�n explicita, si no da error
   put (eDiaLab) ; new_line ;                             -- put est� en la librer�a T_DL_IO

   eDiaFin := Viernes ;
   eDia       := T_DiasSemana (eDiaFin) ;       -- Conversi�n explicita, si no da error
   put (eDia) ; new_line ;                                  -- put est� en la librer�a T_D_IO

   eDiaLab := Viernes ;
   eDiaFin  := T_FinSemana (eDiaLab) ;         -- Conversi�n explicita, si no da error
   put (eDiaFin) ; new_line ;                              -- put est� en la librer�a T_DF_IO
end TiposEnumerados_4 ;
