-- paquete con TIPO PROTEGIDO que implementa un semáforo para inicio sincronizado.
-- Este semáforo de sincronización permite despertar con
-- un único Go (o signal) a todas las tareas que se encuentren en la cola del
-- Wait. Esto es útil para que desde el padre (el main) se pueda despertar mediante
-- un único Go a todas las tareas (periódicas o esporádicas) que están esperando
-- a que el padre establezca el instante de sincronización inicial.

package Barreras is

   protected type Barrier is
      entry Wait;
      procedure Go;
   private
      Opened: Boolean:=False;
   end Barrier;

end Barreras;
