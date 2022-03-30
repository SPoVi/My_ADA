-- paquete con TIPO PROTEGIDO que implementa un sem�foro para inicio sincronizado.
-- Este sem�foro de sincronizaci�n permite despertar con
-- un �nico Go (o signal) a todas las tareas que se encuentren en la cola del
-- Wait. Esto es �til para que desde el padre (el main) se pueda despertar mediante
-- un �nico Go a todas las tareas (peri�dicas o espor�dicas) que est�n esperando
-- a que el padre establezca el instante de sincronizaci�n inicial.

package Barreras is

   protected type Barrier is
      entry Wait;
      procedure Go;
   private
      Opened: Boolean:=False;
   end Barrier;

end Barreras;
