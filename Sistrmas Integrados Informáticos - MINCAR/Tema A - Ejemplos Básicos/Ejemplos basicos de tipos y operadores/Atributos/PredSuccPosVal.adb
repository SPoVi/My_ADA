--------------------------------------------------------------------------------
-- FICHERO     : PredSuccPosVal.adb
-- COMETIDO    : Programa para mostrar el uso de atributos
-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
with Ada.Text_IO ;              -- Leer y escribir texto
use  Ada.Text_IO ;

procedure PredSuccPosVal is

   type T_DiasSemana is (lunes, martes, miercoles, jueves, viernes, sabado, domingo);

   subtype T_FinSemana  is T_DiasSemana range viernes .. domingo ;
   subtype T_Laborables is T_DiasSemana range lunes .. viernes ;

   package T_DiasIO is new Enumeration_io (T_DiasSemana) ;

   use T_DiasIO ;

   eDia : T_FinSemana ;
   iDia : Integer  ;

begin
   New_line ;
   eDia := Viernes ;
   iDia := T_FinSemana'Pos(eDia) ;
   put_line ("----- del FinSemana: Viernes") ;
   put_line (T_FinSemana'Image(eDia)) ;       -- VIERNES
   put_line ("Dia: " & Integer'Image(iDia)) ; -- Dia: 4
   new_line ;

   Put_line ("----- del tipo FinSemana") ;
   put_line ("Primero: " & T_FinSemana'Image(T_FinSemana'First)) ; -- VIERNES
   put_line (" Ultimo: " & T_FinSemana'Image(T_FinSemana'Last)) ;  -- DOMINGO
   new_line ;

   put_line ("----- del FinSemana: Viernes (siguiente)") ;
   eDia := T_FinSemana'Succ(Viernes) ;
   iDia := T_FinSemana'Pos(eDia) ;
   put_line (T_FinSemana'Image(eDia)) ;       -- SABADO
   put_line ("Dia: " & Integer'Image(iDia)) ; -- Dia: 5
   New_line ;

   put_line ("----- del FinSemana: Viernes (anterior)") ;
   eDia := T_FinSemana'Pred(Viernes) ;          -- "Constraint_Error"
   iDia := T_FinSemana'Pos(eDia) ;
   put_line (T_FinSemana'Image(eDia)) ;
   put_line ("Dia: " & Integer'Image(iDia)) ;

end PredSuccPosVal ;
