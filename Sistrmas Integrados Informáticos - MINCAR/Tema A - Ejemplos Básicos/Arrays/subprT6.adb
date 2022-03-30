


   function fnboPrimo (nNum: Integer) return boolean is
      boPrimo: Boolean:= TRUE;
      nAux: Integer;

   begin

      nAux := nNum - 1;
      while boPrimo and nAux /= 1 loop
         if nNum rem nAux = 0 then
            boPrimo := FALSE;
         end if;
         nAux := nAux - 1;
      end loop;
      return boPrimo;
   end fnboPrimo;

   function Moda(numeros:in T_numeros; long:in Natural) return Integer is -- PONED EN T_numeros el tipo de vuestro array
      moda,cnt,cntmod	: Integer:=0;
   begin
      for I in 1..long loop	-- Recorrer array empezando cada vez por el elemento siguiente
         for J in I..long loop
            if numeros(J)=numeros(I) then --que se compare consigo mismo para que cuente uno
               cnt:=cnt+1;	-- Contar de números iguales
            end if;
         end loop;
         if cnt>cntmod then	-- Si hay más números que los anteriores,actualiza la moda
            cntmod:=cnt;
            moda:=numeros(I);
         end if;
         cnt:=0;
      end loop;
      return moda;
   end Moda;


