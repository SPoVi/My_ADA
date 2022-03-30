package body Barreras is

   protected body Barrier is

      entry Wait when Opened is -- la tarea entra solo si opened es true
      begin
         if Wait'Count = 0 then Opened :=False; end if; --interpretacion: pongo el semaforo en rojo si el numero de tareas en la cola de wait es 0
         -- significa que yan han finalizado el acceso todas las tareas que estan en la cola
      end Wait;

      procedure Go is
      begin
         Opened :=True; -- interpr: pongo semaforo en verde
      end Go;

   end Barrier;
end Barreras;
-- Go-> pone opened a true
-- Wait-> pone opened a false si no tiene tareas esperando en la cola
