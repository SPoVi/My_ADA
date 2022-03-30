-- Paquete que proporciona:
--1. la declaraci�n del sem�foro Stop de tipo Barrier (contenido en el paquete barreras)
-- 2. dos objetos protegidos (no tipos): Comienzo y Fin
-- COmienzo permite escribir y leer el valor del instante de sincronizaci�n inicial,
-- de manera que el padre (main) es el que escribe ese valor mediante Comienzo.Set_Initial_Time (...)
-- y las tareas peri�dicas y espor�dicas lo leen mediante Comienzo. Get_Initial-Time;
-- Fin permite poner a TRUE una variable booleana, compartida por todas las tareas del sistema,
-- si se quiere finalizar la ejecuci�n. Normalmente, una tarea, bajo el criterio
-- de la aplicaci�n concreta, llamar� a Fin.Set_Finish para finalizar la ejecuci�n.
-- Los loops de las tareas, para poder finalizar, tendr�n condici�n de finalizaci�n:
--  exit when Fin.Get_Finish;

with Ada.Real_Time;use Ada.Real_Time;
with barreras; use barreras;

package ComienzoFin is

   Stop: Barrier;

   protected Comienzo is
      procedure Set_Initial_Time(It : Time);
      function Get_Initial_Time return Time;
   private
      Initial_Time : Time;
   end Comienzo;

   protected Fin is
      procedure Set_Finish;
      function Get_Finish return Boolean;
   private
      Finished : Boolean := False;
   end Fin;
end ComienzoFin;
