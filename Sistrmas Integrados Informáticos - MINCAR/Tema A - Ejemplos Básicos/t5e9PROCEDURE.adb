with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;

procedure t5e9 is
   function fnnOpci�n return Natural is
      type nuevo is new Integer;
      nOpci�n: Natural;
   begin
       loop
         Put_Line("--------MEN�----------");
         Put_Line("1- PASO DE CARTESIANAS A POLARES");
         Put_Line("2- PASO DE POLARES A CARTESIANAS");
         Put_Line("0- Fin de programa");
         Get(nOpci�n);
         exit when nOpci�n in 0..2;
      end loop;
      return nOpci�n;
   end fnnOpci�n;

   procedure Car2Pol (fx, fy: Float; fp, fa: out Float) is

   begin

      fp:= sqrt(fx**2+fy**2);
      fa:= arctan(fy, fx, 360.0); -- sin nada, �ngulo en radianes

   end Car2Pol;

   procedure Pol2Car (fp, fa: Float; fx, fy: out Float)is

   begin

      fx:= fp*cos(fa, 360.0);
      fy:= fp*sin(fa, 360.0);

   end Pol2Car ;

   nOpci�n: NaturaL;
   fp, fa, fx, fy: float;

begin

   nOpci�n:= fnnOpci�n;

   while nOpci�n /= 0 loop
      case nOpci�n is
         when 1=>
            Put_Line("introducir coordenada cartesiana x");
            Get(fx);
            Put_Line("introducir coordenada cartesiana y");
            Get(fy);
            Car2Pol (fx,fy,fp,fa);
            Put ("Equivale a m�dulo: ");
            Put (fp, 0, 2, 0);
            Put (" y argumento: ");
            Put (fa, 0, 2, 0);
            New_Line;

         when 2=>
            Put_Line("introducir m�dulo");
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
      nOpci�n:= fnnOpci�n;
   end loop;
   end t5e9;


