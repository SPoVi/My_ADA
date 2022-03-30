package body PilaL is
   Max: constant:= 100;
   type T_aiPila is array (1..Max) of Integer;
   aiPila: T_aiPila;
   iTop: Integer range 0..Max;

   procedure Push (iX:Integer) is
   begin
      if iTop=Max then
         raise ErrorPila;
      end if;
      iTop:= iTop+1;
      aiPila(iTop):= iX;
   end Push;

   function Pop return Integer is
      begin
         if iTop=0 then
         raise ErrorPila;
      end if;
      iTop:= iTop-1;
      return aiPila(iTop+1);
   end Pop;

begin
   iTop:=0;			-- Inicialización
end PilaL;

