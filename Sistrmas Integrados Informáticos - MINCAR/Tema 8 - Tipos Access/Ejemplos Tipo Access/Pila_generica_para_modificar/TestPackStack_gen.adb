--
-- Codifica: Fabian Lopez
--
-- Descripcion:  Paquete que implementa una pila LIFO (Last In First Out)
--               Operaciones: Push y Pop
--               Es una pila genérica con dos parámetros: 
--                                            Tamaño de la pila
--                                            Elementos de la pila
--
--               Uso de la pila:
--                              Uso de una pila de enteros
--                              
--
--       Fecha:  29/Noviembre/2019
---------------------------------------------------------------
with Ada.Text_IO ;        use Ada.Text_IO ;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO ;
with Ada.Float_Text_IO;   use Ada.Float_Text_IO ;

with PackStack_gen ; -- uso de paquete genérico

procedure testPackStack_gen is
  
   subtype T_Elementos is Integer range 0 .. 100 ;
   
   -- Crear un ejemplar de la pila de 5 integers
   package PilaEnteros is new PackStack_gen (Max    => 5, 
                                             T_Item => T_Elementos);
  use PilaEnteros ;
  
   -- Crear un ejemplar de la pila de 10 Floats
   package PilaFloats is new PackStack_gen (Max    => 10, 
                                            T_Item => T_Elementos);
  use PilaFloats ;
  
    --Variables
  iValor: T_Elementos := 5 ;
begin
   --Put ("             La pila esta llena?: ");
   ---
   
   --New_Line ;
   --Put ("             La pila esta vacia?: ");
   ---
   --New_Line ;
   
   --Put ("  Numero de elementos en la pila: ");
   ---
   --New_Line ;

      -- Sacar un valor de la pila   
   iValor :=  Pop ; 
   put ("Valor sacado de la pila el valor: ") ;
   put (iValor , 0) ;
   New_line (2) ;

   
   iValor := 5 ;
   -- Añadir un valor a la pila
   put ("Introducir en la pila el valor: ") ;
   put (iValor , 0) ;
   New_line ;
   Push (iValor) ;
 
   iValor := 15 ;
     -- A±adir un valor a la pila
   put ("Introducir en la pila el valor: ") ;
   put (iValor , 0) ;
   New_line ;
   Push (iValor) ;

   iValor := 25 ;
     -- A±adir un valor a la pila
   put ("Introducir en la pila el valor: ") ;
   put (iValor , 0) ;
   New_line ;
   Push (iValor) ;
   
   
   New_Line  ;
   Put_Line ("Contenido de la pila") ;   
   Put_line ("-------------------------------------------");
   ---
   
   ---
   Put_line ("-------------------------------------------");
   
  -- Sacar un valor de la pila
   iValor :=  Pop ; 
   New_line ;
   put ("Sacado de la pila el valor: ") ;
   put (iValor , 0) ;
     
     -- Sacar un valor de la pila
   iValor :=  Pop ; 
   New_line ;
   put ("Sacado de la pila el valor: ") ;
   put (iValor , 0) ;
   
   New_Line (2) ;
   Put_Line ("Contenido de la pila") ;   
   Put_line ("-------------------------------------------");
   ---
   ---    
   ---
   Put_line ("-------------------------------------------");
   
   --  
end testPackStack_gen ;
