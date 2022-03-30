-- Fabi�n L�pez
-- 2019-2020
--
-- Tema: Estructuras de datos

-- Descripci�n: Declaraciones de arrays de registros
--             Subprogramas para lee y rellenar un array de registros
---------------------------------------------------------------------

with Ada.Text_IO;          use Ada.Text_IO;
with Ada.Integer_Text_IO;  use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;    use Ada.Float_Text_IO;

procedure T_05B_ArraydeRegistrosLeerMostrar is

   type T_Mes is (Enero, Febrero, Marzo, Abril, Mayo, Junio,
                  Julio, Agosto,  Septiembre, Octubre,
				  Noviembre, Diciembre);
   subtype T_spDia is Positive range 1..31;

   type T_rgFecha is
      record
         spDia : T_spDia := 1;
         eMes  : T_Mes   := Enero ;
         iA�o  : Integer := 1900 ;
      end record ;

   type T_Asignatura is (Historia, Geografia, Matematicas) ;

   subtype T_fNota is Float range 0.0 .. 10.0 ;

   type T_afNotas is array (T_asignatura) of T_fNota ;

   type T_rgEstudiante is
      record
         rgCumplea�os : T_rgFecha ;
         afNotas      : T_afNotas := (others => 0.0) ;
      end record;

   -- Declaraci�n de tipo lista de estudiantes: Array de registros
   type T_argEstudiantes is array (Natural range <>) of T_rgEstudiante ;

   -- Ejemplar de paquetes para mostrar y leer los tipos enumerados definidos en el programa
   package T_Mes_IO is new Enumeration_IO (T_Mes) ;
   Use T_Mes_IO ;

   package T_Asignatura_IO is new Enumeration_IO (T_Asignatura) ;
   Use T_Asignatura_IO ;

  ------------------------------------------------------------------------------------------------------
  -- Declaraci�n de subprogramas

  procedure LeerEstudiante (rgUnEstudiante : out T_rgEstudiante) is
  begin
     put_Line ("Escribe la fecha de nacimiento: ") ;
     put ("          Dia: ") ;
     get (rgUnEstudiante.rgCumplea�os.spDia) ; Skip_Line ;
     put (" Mes (letras): ") ;
     get (rgUnEstudiante.rgCumplea�os.eMes) ; Skip_Line ;

     put ("         Anio: ") ;
     get (rgUnEstudiante.rgCumplea�os.iA�o) ; Skip_Line ;
     --put ("Nota en    Historia (0..100): ") ;
     --get (rgUnEstudiante.anNotas(Historia)) ; Skip_Line ;
     --put ("Nota en   Geograf�a (0..100): ") ;
     --get (rgUnEstudiante.anNotas(Geograf�a)) ; Skip_Line ;
     --put ("Nota en Matem�ticas (0..100): ") ;
     --get (rgUnEstudiante.anNotas(Matem�ticas)) ; Skip_Line ;
	 for iAsignatura in T_afNotas'Range loop
        put ("Nota en ") ;
		put (iAsignatura, 12, Upper_Case) ;
		put ("(0.0 .. 10.0): ") ;
	    get (rgUnEstudiante.afNotas(iAsignatura)) ;
		Skip_Line ;
	 end loop ;
  end LeerEstudiante ;

  procedure MostrarEstudiante (rgUnEstudiante : in T_rgEstudiante) is
  begin
     put ("Fecha de nacimiento: ") ;
     put (rgUnEstudiante.rgCumplea�os.spDia, 2) ;
	 put ("/") ;
     put (rgUnEstudiante.rgCumplea�os.eMes, 0, Lower_Case) ;
     put ("/") ;
      put (rgUnEstudiante.rgCumplea�os.iA�o, 0) ;
      New_line ;
     --put ("Nota en    Historia (0..100): ") ;
     --put (rgUnEstudiante.anNotas(Historia)) ; Skip_Line ;
     --put ("Nota en   Geograf�a (0..100): ") ;
     --put (rgUnEstudiante.anNotas(Geograf�a)) ; Skip_Line ;
     --put ("Nota en Matem�ticas (0..100): ") ;
     --put (rgUnEstudiante.anNotas(Matem�ticas)) ; Skip_Line ;
	 for iAsignatura in T_afNotas'Range loop
        put ("Nota en ") ;
		put (iAsignatura, 12, Upper_case) ;
		put ("(0.0 .. 10.0): ") ;
	    put (rgUnEstudiante.afNotas(iAsignatura), 2, 1, 0) ;
		New_Line ;
	 end loop ;
   end MostrarEstudiante ;

  procedure LeerListaEstudiantes (argListaEstudiantes : out T_argEstudiantes;
                                  nLong : out Natural) is
   begin

      loop
         Put ("Cuantos estudiantes vas a aniadir (0..") ;
         Put (ArgListaEstudiantes'Length, 0) ;
         Put ("): ") ;
         Get (nLong) ;
         Skip_Line ;
	 exit when nLong <= argListaEstudiantes'Length;
	 New_line ;
	 Put ("Error: debe ser un numero entero menor que ") ;
	 put (argListaEstudiantes'Length, 0) ;
	 new_line ;
      end loop ;
      for i in 1..nLong loop
	    LeerEstudiante (argListaEstudiantes (i) ) ;
        New_line ;
      end loop ;
  end LeerListaEstudiantes ;

  procedure MostrarListaEstudiantes
                           (argListaEstudiantes : in T_argEstudiantes) is
  begin
      for i in argListaEstudiantes'Range loop
          put ("Estudiante ") ;
          put (i, 3) ;
          put_line (": ") ;
          MostrarEstudiante (argListaEstudiantes (i) ) ;
          New_line ;
      end loop ;
  end MostrarListaEstudiantes ;

  -- Declaraci�n de variables
  --rgEstudiante: T_rgEstudiante;

  -- Declaraci�n de tipo lista de estudiantes: Array de registros

  N: constant Natural := 10 ;
  argListaEstudiantes : T_argEstudiantes (1..N) ;  -- Variable de tipo array de registros
  nLong : Integer := 0 ;

begin
   put_Line ("Escribe la informacion de todos los estudiantes") ;
   put_Line ("===============================================") ;
   New_line ;
   LeerListaEstudiantes (argListaEstudiantes, nLong) ;
   New_Line ;
   put ("Estudiantes leidos: ") ;
   put (nLong, 0) ;
   New_line (2);

   put_Line ("La informacion leida de todos los estudiantes es:") ;
   New_line ;

   MostrarListaEstudiantes (argListaEstudiantes (1..nLong) ) ;
   New_Line ;
end T_05B_ArraydeRegistrosLeerMostrar ;
