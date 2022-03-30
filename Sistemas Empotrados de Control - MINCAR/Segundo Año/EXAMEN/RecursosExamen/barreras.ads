package Barreras is

   protected type Barrier is
      entry Wait;
      procedure Go;
   private
      Opened: Boolean:=False;
   end Barrier;

end Barreras;
