--------------------------------------------------------------------------------
-- FICHERO     : Get_Get_Line_Skip_Line.adb
-- COMETIDO    : Uso de GET y Get_line con Skip_Line para leer cadenas de caracteres

-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
with Ada.Text_IO; use Ada.Text_IO;

procedure Get_Get_Line_Skip_Line is
   sLinea : String (1..5) ;
   nLong: Natural ;
begin
   New_line ;
   put_line ("Ahora utilizando Skip_Line...") ;
   New_line ;

   Put ("      Introduce frase Get: ") ;
   Get (sLinea);  -- Se deben escribir al menos 5 caracteres)
   -- Skip_line ;

   Put_Line ("Leido : #" & sLinea & "#") ;


   New_line ;
   Put  ("Introduce frase Get_Line:") ;
   Get_Line (sLinea, nLong) ;	 -- Otra
                                                                                    -- sLinea := ""        nLong = 0
   Put_Line ("Leido : #" & sLinea (1..nLong) & "#") ;

   Skip_line ;
   New_line ;
   put_line ("Ahora utilizando Skip_Line...") ;
   New_line ;

   Put ("     Introduce frase Get: ") ;
   Get (sLinea);  -- Se deben escribir al menos 5 caracteres)
   Skip_line ;

   Put_Line ("Leido : #" & sLinea & "#") ;


   New_line ;
   Put  ("Introduce frase Get_Line: ") ;
   Get_Line (sLinea, nLong) ;	 -- Otra
                                                                                    -- sLinea := ""        nLong = 0
   Put_Line ("Leido : #" & sLinea (1..nLong) & "#") ;

end Get_Get_Line_Skip_Line ;
