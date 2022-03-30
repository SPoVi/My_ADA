--------------------------------------------------------------------------------
-- FICHERO     : Ejemplo_Subtipos.adb
-- COMETIDO    : Ejemplo de declaraciones de subtipos
-- AUTOR       : Fabi�n L�pez
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------

with ada.text_IO ; use ada.text_IO ;
with ada.Integer_text_IO ; use ada.Integer_text_IO ;

procedure Ejemplo_Subtipo is
  subtype T_spDiaA�o is Positive range 1..365 ; -- Nuevo subtipo Positive T_spDiaA�o
  subtype T_spDiaMes is Positive range 1..31 ;  -- Nuevo subtipo Positive T_spDiaMes
   
   
  spDiaA�o : T_spDiaA�o ; -- Declaraci�n de variable de tipo T_spDiaA�o;
  spDiaMes : T_spDiaMes ; -- Declaraci�n de variable de tipo T_spDiaMes;
begin
  spDiaA�o := 100 ; 
  spDiaMes := spDiaA�o ; -- Incorrecto, se trata de asignar el valor 110 a spDiaMes
  spDiaMes := 20 ;  
  spDiaA�o := spDiaMes ; -- Correcto, asigna el valor 20 a spDiaA�o
   
  Put ("Introducir d�a del a�o: ") ;
  Get (spDiaA�o) ;       -- Posible excepci�n.. Error si usuario escribe un valor fuera del rango
  spDiaMes := spDiaA�o ;            -- Posible excepci�n. Error si spDiaA�o vale m�s de 31
end Ejemplo_Subtipo ;

