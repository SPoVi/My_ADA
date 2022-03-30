--------------------------------------------------------------------------------
-- FICHERO     : IndiceCircular.adb
-- COMETIDO    : Mostrar los sucesivos valores de un tipo circular
-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
with text_IO ; use text_IO ;
with Ada.Text_IO; 

procedure IndiceCircular is
   
   type IntegerCircular is  mod  5 ;  -- Declaración de tipo entero circular                                                                          
                                      --  0 .. 4     
                                      
   iNum       : IntegerCircular ;           -- Declaracion de variable
   iA, iB, iC : IntegerCircular ;           -- Declaracion de variable
-- iP,   iQ, iR : Integer ;
      
begin  
   iA := 3  ;
   iB := 2 ;
   
   iC := iA OR iB ;    -- con tipos Integer circular AND, OR, XOR y NOT 
                       -- se ejecuta bit a bit
                       
   -- iP := iQ OR iR ; -- esta operacion no se puede realizar
   
   iNum := IntegerCircular'First ;    -- iNum pasa a valer 0
  
   for i in 1 .. 15 loop
      put_Line (IntegerCircular'Image (iNum)) ; -- Mostar el valor de iNum
      iNum := iNum  + 1 ;                       -- Incrementar iNum      
   end loop ;
   
end IndiceCircular;
