--
-- Codifica: Fabian Lopez
--
-- Descripcion:  Paquete que implementa una pila LIFO (Last In First Out)
--               Operaciones: Push y Pop
--               Es una pila genérica con dos parámetros: 
--                                            Tamaño de la pila
--                                            Elementos de la pila
--
--               Especificación de la pila
--
--       Fecha:  29/Noviembre/2019
---------------------------------------------------------------
generic
  Max: Positive ;
   type T_Item is private ;
   
package PackStack_gen is

  procedure Push (ItemX: T_Item) ;
  
  function  Pop return T_Item ;
  
end PackStack_gen;
