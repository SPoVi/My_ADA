package body Barreras is

   protected body Barrier is

      entry Wait when Opened is
      begin
         if Wait'Count = 0 then Opened :=False; end if;
      end Wait;

      procedure Go is
      begin
         Opened :=True;
      end Go;

   end Barrier;
end Barreras;
-- Go-> pone opened a true
-- Wait-> pone opened a false si no tiene tareas esperando en la cola (Wait'Count = 0)
