--------------------------------------------------------------------------------
-- FICHERO     : To_Upper_To_Lower.adb
-- COMETIDO    : Funciones de cadenas: To_Upper y To_Lower

-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
with Ada.Text_IO ;             use Ada.Text_IO ;
with Ada.Characters.Handling ; use Ada.Characters.Handling ; 

procedure To_Upper_To_Lower is
   sCadena : String (1..20) ;
   nLong: Natural ;
begin
   Put ("Introduce un string en minusculas: ") ;
   Get_Line (sCadena, nLong) ;
   Put ("                    en mayusculas: ") ;
   Put (To_Upper (sCadena (1..nLong))) ; New_Line ;

   Put ("Introduce un string en mayusculas: ") ;
   Get_Line (sCadena, nLong) ;
   Put ("                    en minusculas: ") ;
   Put (To_Lower (sCadena (1..nLong))) ; New_Line ;
end To_Upper_To_Lower ;
