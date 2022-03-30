--------------------------------------------------------------------------------
-- FICHERO     : Image_Value.adb
-- COMETIDO    : Programa para mostrar el uso de atributos
-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
with text_IO ;             use text_IO ;
with Ada.Float_Text_IO ;   use Ada.Float_Text_IO ;

procedure Image_Value is
   fNumReal : Float ;
   sCad_12  : String (1..12) ;
   sCad_3   : String (1..3) ;
begin

   fNumReal := 3.2 ;
   put ("     Valor = ") ;
   put (fNumReal) ;
   New_line ;

   sCad_12 := Float'Image  (fNumReal) ;
   put_line ("     Valor = " & sCad_12) ;
   put_line ("     Valor = " & Float'Image  (fNumReal)) ;

   sCad_3  := "3.2" ;
   put_line ("     Valor = " & sCad_3) ;

   fNumReal := Float'Value(sCad_3) ;
   put ("     Valor = ") ;
   put (fNumReal) ;
   New_line ;

end Image_Value ;
