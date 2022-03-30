--------------------------------------------------------------------------------
-- FICHERO     : clasificacion_Char.adb
-- COMETIDO    : Funciones de clasificación de caracteres
-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
with Ada.Text_IO ; use Ada.Text_IO ;
with Ada.Characters.Handling ; use Ada.Characters.Handling ;
procedure clasificacion_Char is
   cCaracter : Character;
   -- package Mi_enum is new Enumeration_IO (Boolean); 
   -- use Mi_enum;
begin
   New_line ;
   Put ("Introduce un caracter: ") ;
   Get (cCaracter) ;
   
 --  Put("           Es control?: "); 
 --  Put(Is_Control(cCaracter)) ; 
 --  New_Line ;
   New_line ;
   Put("           Es control?: " & Boolean'Image(Is_Control(cCaracter))) ; 
   New_Line ;
   Put("        NO es control?: " & Boolean'Image(Is_Graphic(cCaracter))) ; 
   New_Line ;
   Put("             Es letra?: " & Boolean'Image(Is_Letter(cCaracter))) ; 
   New_Line ;
   Put("Es letra en minuscula?: " & Boolean'Image(Is_Lower(cCaracter))) ; 
   New_Line ;
   Put("Es letra en mayuscula?: " & Boolean'Image(Is_Upper(cCaracter))) ; 
   New_Line ;
   Put("      Es letra basica?: " & Boolean'Image(Is_Basic(cCaracter))) ; 
   New_Line ;
   Put("Es digito hexadecimal?: " & Boolean'Image(Is_Hexadecimal_Digit(cCaracter))) ; 
   New_Line ;
   Put("      Es alfanumerico?: " & Boolean'Image(Is_Alphanumeric(cCaracter))) ; 
   New_Line ;
   Put("          Es especial?: " & Boolean'Image(Is_Special(cCaracter))) ; 
   New_Line ;
end clasificacion_Char;
