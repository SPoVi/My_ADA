with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure examen2 is
   
   ferror:Float;
   
   function Menu return Integer is
      iOpcion:Integer;
      
   begin
      loop
         Put_Line("--------MENÚ----------");
         Put_Line("1. Introducir parametros sistema de primer orden:");
         Put_Line("2. Introducir valor de entrada de referencia:");
         Put_Line("3. Ejecutar simulacion del lazo de control");
         Put_Line("0. Salir");
         Get(iOpcion);
         exit when iOpcion in 0..3;
      end loop;
      return iOpcion;
   end Menu;
   
   function Estabilidad (fA: in Float) return Boolean is
      bEstable:Boolean;
      
   begin
      if fA>=-1.0 and fA<=1.0 then
         bEstable:=True;
      else 
         bEstable:=False;
      end if;
      
      return bEstable;
   end Estabilidad;
   
   function Controlador (ferror: in Float) return Integer is
      iUk:Integer;
            
   begin
      if ferror>0.0 then
         iUk:=1;
      elsif ferror<0.0 then 
         iUk:=-1;
      elsif ferror=0.0 then
         iUk:=0;
      end if;

      return iUk;
   end Controlador;
   
   function Planta (iUk: in Integer; fA,fK,fK0: in Float) return Float is
      fYk:Float;
      
   begin
      
      fYk:=(fA*fK0)+(fK*Float(iUk));
      
      
      return fYk;
   end Planta;
   
   procedure Simulacion_Lazo (fRef,fYk,fA,fK: in Float; ferror: out Float) is
      fYk_Aux:Float;
      fK0:Float:=0.0;
      iUk_Aux:Integer;
      
   begin
      ferror:=1.0;
      for a in 1..60 loop
         
         iUk_Aux:=Controlador(ferror);
         fYk_Aux:=Planta(iUk_Aux,fA,fK,fK0);
         fK0:=fYk_Aux;
         ferror:=fRef-fYk;
          Put_Line(Float'Image(fYk_Aux) &"|" &Integer'Image(iUk_Aux));
      end loop;
      
   end Simulacion_Lazo;
   
   
   
      iOpc,iUk:Integer;
      fRef,fA,fK,fYk:Float;
      bEst:Boolean;
      
      begin
         iOpc:=Menu;
         fA:=0.9;
         fK:=0.1;
         fRef:=1.0;
   
         while iOpc/=0 loop
      
            case iOpc is
            when 1=> --Estabilidad
               Put_Line("Introducir el valor del polo:");
               Get(fA);
               Put_Line("Introducir el valor de la ganancia:");
               Get(fK);
            bEst:=Estabilidad(fA);
            
               if bEst=True then
                  Put_Line("Es estable");
               elsif bEst=False then
                  Put_Line("No es estable");
               end if;

            when 2=> --Referencia
               Put_Line("Introduce el valor de referencia");
               Get(fRef);
               
            when 3=> --Simulacion
                Simulacion_Lazo (fRef,fYk,fA,fK,ferror);
            
            when others=>
               null;
            end case;
      
            iOpc:=Menu;
         end loop;

      end examen2;
