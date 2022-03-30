--
-- Codifica: Fabian Lopez
--
-- Descripcion:  Paquete que implementa una pila LIFO (Last In First Out)
--               Operaciones: Push y Pop
--               Es una pila genérica con dos parámetros: 
--                                            Tamaño de la pila
--                                            Elementos de la pila
--
--               Cuerpo de la pilaa
--
--       Fecha:  29/Noviembre/2019
---------------------------------------------------------------
package body PackStack_gen is
  type T_aItemPila is array (1..Max) of T_Item ;
  
  aItemPila: T_aItemPila ;
  iTop     : Natural range 0..Max ;
  
  procedure Push (ItemX: T_Item) is
    begin
    iTop := iTop + 1;
    aItemPila(iTop) := ItemX;
    end Push;
	
  function Pop return T_Item is
    begin
      
         iTop := iTop - 1;
         return aItemPila (iTop + 1);
      
   end Pop;
	
begin
  iTop := 0 ; -- Inicializ. del indice de pila
end PackStack_gen;
