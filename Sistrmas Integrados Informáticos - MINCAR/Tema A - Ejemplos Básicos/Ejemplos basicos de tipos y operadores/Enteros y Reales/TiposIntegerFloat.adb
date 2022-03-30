--------------------------------------------------------------------------------
-- FICHERO     : TiposIntegerFloat.adb
-- COMETIDO    : Literales enteros y float. Operaciones básicas con Enteros
-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
with Ada.text_IO ;         use Ada.text_IO ;
with Ada.Integer_text_IO ; use Ada.Integer_text_IO ;

procedure TiposIntegerFloat is
   iNumInt   : Integer ;
   fNumFloat : Float ;

   package Mi_Int_io is new Ada.Text_IO.Integer_io (Integer) ;
   use Mi_Int_io ;

   nNumero : Natural := 3 ;
   fNumero : Float;
   iNumero : Integer := -12 ;
   boB, boC, boD, boE : Boolean := TRUE  ;
begin
   Ada.Integer_text_IO.put (iNumero) ;
   boB := iNumero not in iNumero..(nNumero * 2);

   -- boE := boB and boC or boD ; --  Error de compilación
   boE := boB and (boC or boD) ;  --  Correcto

   iNumero := (3 ** 3)  ** 2 ;
   iNumero := abs (- 2) ;
   iNumero := - abs 2;

   nNumero  := 3 ** 3 ;
   fNumero := 3.0  ** 3;
   iNumero := 2 ** (0);
   fNumero := 3.0 ** (-2);

   iNumInt := 12 ;
   iNumInt := 2#10# ;
   iNumInt := 8#12# ;
   iNumInt := 16#12# ;

   iNumInt := 19E02 ;
   iNumInt := 190E+1 ;
   iNumInt := 1_900E0 ;

   fNumFloat := 12.0 ;
   fNumFloat := 2#1.0# ;
   fNumFloat := 8#1.2# ;
   fNumFloat := 16#1.2# ;

   fNumFloat := 19.0E02 ;
   fNumFloat := 1.90E+3 ;
   fNumFloat := 1_900.0E0 ;
end TiposIntegerFloat ;
