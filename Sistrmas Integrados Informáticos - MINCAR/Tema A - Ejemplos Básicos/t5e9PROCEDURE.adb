with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;

procedure t5e9 is
   function fnnOpción return Natural is
      type nuevo is new Integer;
      nOpción: Natural;
   begin
       loop
         Put_Line("--------MENÚ----------");
         Put_Line("1- PASO DE CARTESIANAS A POLARES");
         Put_Line("2- PASO DE POLARES A CARTESIANAS");
         Put_Line("0- Fin de programa");
         Get(nOpción);
         exit when nOpción in 0..2;
      end loop;
      return nOpción;
   end fnnOpción;

   procedure Car2Pol (fx, fy: Float; fp, fa: out Float) is

   begin

      fp:= sqrt(fx**2+fy**2);
      fa:= arctan(fy, fx, 360.0); -- sin nada, ángulo en radianes

   end Car2Pol;

   procedure Pol2Car (fp, fa: Float; fx, fy: out Float)is

   begin

      fx:= fp*cos(fa, 360.0);
      fy:= fp*sin(fa, 360.0);

   end Pol2Car ;

   nOpción: NaturaL;
   fp, fa, fx, fy: float;

begin

   nOpción:= fnnOpción;

   while nOpción /= 0 loop
      case nOpción is
         when 1=>
            Put_Line("introducir coordenada cartesiana x");
            Get(fx);
            Put_Line("introducir coordenada cartesiana y");
            Get(fy);
            Car2Pol (fx,fy,fp,fa);
            Put ("Equivale a módulo: ");
            Put (fp, 0, 2, 0);
            Put (" y argumento: ");
            Put (fa, 0, 2, 0);
            New_Line;

         when 2=>
            Put_Line("introducir módulo");
            Get(fp);
            Put_Line("introducir argumento en GRADOS");
            Get(fa);
            Pol2Car (fp, fa, fx, fy);
             Put ("Equivale a x: ");
            Put (fx, 0, 2, 0);
            Put ("e y: ");
            Put (fy, 0, 2, 0);
            New_Line;

         when others => null;
      end case;
      nOpción:= fnnOpción;
   end loop;
   end t5e9;


