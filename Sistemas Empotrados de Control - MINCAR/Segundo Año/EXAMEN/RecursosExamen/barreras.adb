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

