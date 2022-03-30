--------------------------------------------------------------------------------
-- FICHERO     : TruncationRoundingCeilingFloor.adb
-- COMETIDO    : Comprobar Truncation Rounding Ceiling Floor

-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------with text_IO ; use text_IO ;
with Ada.Text_IO ;         use Ada.Text_IO ;
with Ada.Integer_Text_IO ; use Ada.Integer_Text_IO ;
with Ada.Float_Text_IO ;   use Ada.Float_Text_IO ;

procedure TruncationRoundingCeilingFloor is
   fNumReal : Float ;
begin
   New_line ;

   fNumReal := 3.2 ;
   put ("      Valor = ") ;
   put (fNumReal) ;
   New_line ;

   fNumReal := 3.2 ;
   fNumReal := Float'Rounding (fNumReal) ; -- 3.0
   put ("   Rounding = ") ;
   put (fNumReal) ;
   New_line ;

   fNumReal := 3.2 ;
   fNumReal := Float'Ceiling (fNumReal) ; -- 4.0

   put ("    Ceiling = ") ;
   put (fNumReal) ;
   New_line ;

   fNumReal := 3.2 ;
   fNumReal := Float'Truncation (fNumReal) ; -- 3.0

   put (" Truncation = ") ;
   put (fNumReal) ;
   New_line ;

   fNumReal := 3.2 ;
   fNumReal := Float'Floor (fNumReal) ; -- 3.0

   put ("      Floor = ") ;
   put (fNumReal) ;
   New_line (3);

 -- --------------------------------------------------------
   fNumReal := 3.5 ;
   put ("      Valor = ") ;
   put (fNumReal) ;
   New_line ;

   fNumReal := 3.5 ;
   fNumReal := Float'Rounding (fNumReal) ; -- 4.0
   put ("   Rounding = ") ;
   put (fNumReal) ;
   New_line ;

   fNumReal := 3.5 ;
   fNumReal := Float'Ceiling (fNumReal) ; -- 4.0

   put ("    Ceiling = ") ;
   put (fNumReal) ;
   New_line ;

   fNumReal := 3.5 ;
   fNumReal := Float'Truncation (fNumReal) ; -- 3.0

   put (" Truncation = ") ;
   put (fNumReal) ;
   New_line ;

   fNumReal := 3.5 ;
   fNumReal := Float'Floor (fNumReal) ; -- 3.0

   put ("      Floor = ") ;
   put (fNumReal) ;
   New_line (3) ;

   -- --------------------------------------------------------
   fNumReal := 3.7 ;
   put ("      Valor = ") ;
   put (fNumReal) ;
   New_line ;

   fNumReal := 3.7 ;
   fNumReal := Float'Rounding (fNumReal) ; -- 4.0
   put ("   Rounding = ") ;
   put (fNumReal) ;
   New_line ;

   fNumReal := 3.7 ;
   fNumReal := Float'Ceiling (fNumReal) ; -- 4.0

   put ("    Ceiling = ") ;
   put (fNumReal) ;
   New_line ;

   fNumReal := 3.7 ;
   fNumReal := Float'Truncation (fNumReal) ; -- 3.0

   put (" Truncation = ") ;
   put (fNumReal) ;
   New_line ;

   fNumReal := 3.7 ;
   fNumReal := Float'Floor (fNumReal) ; -- 3.0

   put ("      Floor = ") ;
   put (fNumReal) ;
   New_line (3);


 -- Con valores negativos


   New_line ;

   fNumReal := -3.2 ;
   put ("      Valor = ") ;
   put (fNumReal) ;
   New_line ;

   fNumReal := -3.2 ;
   fNumReal := Float'Rounding (fNumReal) ; -- 3.0
   put ("   Rounding = ") ;
   put (fNumReal) ;
   New_line ;

   fNumReal := -3.2 ;
   fNumReal := Float'Ceiling (fNumReal) ; -- 4.0

   put ("    Ceiling = ") ;
   put (fNumReal) ;
   New_line ;

   fNumReal := -3.2 ;
   fNumReal := Float'Truncation (fNumReal) ; -- 3.0

   put (" Truncation = ") ;
   put (fNumReal) ;
   New_line ;

   fNumReal := -3.2 ;
   fNumReal := Float'Floor (fNumReal) ; -- 3.0

   put ("      Floor = ") ;
   put (fNumReal) ;

   New_line (3);

 -- --------------------------------------------------------
   fNumReal := -3.5 ;
   put ("      Valor = ") ;
   put (fNumReal) ;
   New_line ;

   fNumReal := -3.5 ;
   fNumReal := Float'Rounding (fNumReal) ; -- 4.0
   put ("   Rounding = ") ;
   put (fNumReal) ;
   New_line ;

   fNumReal := -3.5 ;
   fNumReal := Float'Ceiling (fNumReal) ; -- 4.0

   put ("    Ceiling = ") ;
   put (fNumReal) ;
   New_line ;

   fNumReal := -3.5 ;
   fNumReal := Float'Truncation (fNumReal) ; -- 3.0

   put (" Truncation = ") ;
   put (fNumReal) ;
   New_line ;

   fNumReal := -3.5 ;
   fNumReal := Float'Floor (fNumReal) ; -- 3.0

   put ("      Floor = ") ;
   put (fNumReal) ;
   New_line (3) ;

   -- --------------------------------------------------------
   fNumReal := -3.7 ;
   put ("      Valor = ") ;
   put (fNumReal) ;
   New_line ;

   fNumReal := -3.7 ;
   fNumReal := Float'Rounding (fNumReal) ; -- 4.0
   put ("   Rounding = ") ;
   put (fNumReal) ;
   New_line ;

   fNumReal := -3.7 ;
   fNumReal := Float'Ceiling (fNumReal) ; -- 4.0

   put ("    Ceiling = ") ;
   put (fNumReal) ;
   New_line ;

   fNumReal := -3.7 ;
   fNumReal := Float'Truncation (fNumReal) ; -- 3.0

   put (" Truncation = ") ;
   put (fNumReal) ;
   New_line ;

   fNumReal := -3.7 ;
   fNumReal := Float'Floor (fNumReal) ; -- 3.0

   put ("      Floor = ") ;
   put (fNumReal) ;
   New_line ;

end TruncationRoundingCeilingFloor ;
