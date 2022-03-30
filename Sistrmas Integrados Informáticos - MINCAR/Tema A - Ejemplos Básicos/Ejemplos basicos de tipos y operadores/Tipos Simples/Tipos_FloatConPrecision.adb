--------------------------------------------------------------------------------
-- FICHERO     : Tipos_Float.adb
-- COMETIDO    : Tipos Float y precisión. Comparacion de igualdad
-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
with text_IO ; use text_IO ;
with Ada.Text_IO; 

procedure Tipos_FloatConPrecision is
   type tComaFlotante is digits 7   range 0.0 .. 100.0 ;
   type tComaFija     is delta  0.1 range 0.0 .. 100.0 ;
   
   rFloat                   : Float ;
   rFlotante_1, rFlotante_2 : tComaFlotante ;
   rFijo_1,     rFijo_2     : tComaFija ;
begin
   rFloat := 1.0 ;
   rFlotante_1 := 3.0 ;
   rFijo_1 := 2.0 ;
   put ("   Float: " & Float'Image(rFloat)) ; new_line ;
   put ("Flotante: " & tComaFlotante'Image(rFlotante_1)) ; new_line ;
   put ("    Fija: " & tComaFija'Image(rFijo_1)) ; New_line ;
   
   rFijo_1 := 2.0 ;
   rFijo_2 := 2.001 ;
   new_line ;
   put ("2.0 = 2.001 --->     coma fija: ") ;
   if rFijo_1 = rFijo_2 then
      put_line ("son iguales") ;
   else   
      put_line ("son distintos") ;
   end if ;
   
   rFlotante_1 := 2.0 ;
   rFlotante_2 := 2.001 ;
   
   new_line ;
   put ("2.0 = 2.001 ---> coma flotante: ") ;
   if rFlotante_1 = rFlotante_2 then
      put_line ("son iguales") ;
   else   
      put_line ("son distintos") ;
   end if ;  

   
end Tipos_FloatConPrecision ;
