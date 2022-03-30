--------------------------------------------------------------------------------
-- FICHERO     : FuncionesAritmeticas.adb
-- COMETIDO    : Funciones trigonométricas, logarítmicas,...
-- AUTOR       : Fabión López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
with Ada.Text_IO  ;                      use Ada.Text_IO ; 	                      -- Uso de constantes
with Ada.Numerics ;                      use Ada.Numerics; 	                      -- Uso de constantes
with Ada.Numerics.Elementary_Functions ; use Ada.Numerics.Elementary_Functions;    -- Uso de funciones

procedure FuncionesAritmeticas is
   fResultado : Float;
begin
   fResultado := Sin (Pi / 2.0) ; 		-- fResultado := 1.0
   put_Line ("Sin (PI/2.0) .........: " & Float'Image(fResultado)) ;
   
   fResultado := Sin (45.0, 360.0) ;		-- fResultado := 0.7071
   put_Line ("Sin (45.0, .360.0) ...: " & Float'Image(fResultado)) ;

   fResultado := Cos (Pi) ; 			-- fResultado := -1.0
   put_Line ("Cos (PI) .............: " & Float'Image(fResultado)) ;

   fResultado := Log (e) ; 			-- fResultado := 1.0
   put_Line ("Log (e) ..............: " & Float'Image(fResultado)) ;

   fResultado := Log (10.0, 10.0) ; 		-- fResultado := 1.0
   put_Line ("Log (10.0, 10.0) .....: " & Float'Image(fResultado)) ;

   fResultado := Log (8.0, 2.0) ; 		-- fResultado := 3.0
   put_Line ("Log (8.0, 2.0) .......: " & Float'Image(fResultado)) ;

   fResultado := Exp (1.0) ; 			-- fResultado := 2.7183
   put_Line ("Sin (PI/2.0) .........: " & Float'Image(fResultado)) ;

   fResultado := Sqrt (9.0) ; 			-- fResultado := 3.0
   put_Line ("Sin (PI/2.0) .........: " & Float'Image(fResultado)) ;

   fResultado := 5.0 ** 2.5 ; 			-- fResultado := 55.9017
   put_Line ("5.0 ** 2.5 ...........: " & Float'Image(fResultado)) ;
   
end FuncionesAritmeticas ; 	
