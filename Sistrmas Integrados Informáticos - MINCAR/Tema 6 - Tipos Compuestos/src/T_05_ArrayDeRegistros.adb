-- Fabián López
-- 2019-2020
--
-- Tema: Estructuras de datos
--
-- Descripción: Declaraciones de arrays de registros 
--              Acceso a los diversos elementos de la variable array   
---------------------------------------------------------------------
-- librerias
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;


procedure T_05_ArrayDeRegistros is
   type T_Mes is (Enero, Febrero, Marzo, Abril, Mayo, Junio, Julio, 
                             Agosto, Septiembre, Octubre, Noviembre,
							 Diciembre);
							 
   subtype T_spDia is Positive range 1..31;
   
   type T_rgFecha is
      record
         sp_Dia: T_spDia;
         Mes:    T_Mes;
         iAño:   Integer;
      end record;
	  
   type T_Asignatura is (Historia, Geografía, Matemáticas);
   
   subtype T_fNota is Float range 0.0 .. 10.0 ;
   
   type T_afNotas is array (T_asignatura) of T_fNota ;
  
   type T_rgEstudiante is
      record
         rgCumpleaños: T_rgFecha;
         afNotas: T_afNotas:= (others=>0.0);
      end record;
   
   -- Declaración de array restringido de elementos de tipo array 
   N: constant Natural:=10;
   type T_argEstudiante is array (1..N) of T_rgEstudiante;
   
   -- Declaración de variables 
   argEstudiante:  T_argEstudiante ;  -- Array de Registros (con campo array)
   -- Paquetes leer y mostrar enumerados
   package T_Mes_IO is new Enumeration_IO(T_Mes);
   Use T_Mes_IO;
   
   package T_Asignatura_IO is new Enumeration_IO(T_Asignatura);
   use T_Asignatura_IO;
   
   
   ----------------------------------------------------------------------------
   -- SUBPROGRAMAS
   
   -- Leer estudiante
   procedure LeerEstudiante(rgEstudiante: out T_rgEstudiante) is
   begin
      put_line("Cumpleaños: ");
      put("Dia: ");
      get(rgEstudiante.rgCumpleaños.sp_Dia); Skip_Line;
      put("Mes (letras): ");
      get(rgEstudiante.rgCumpleaños.Mes); Skip_Line;
      put("Año: ");
      get(rgEstudiante.rgCumpleaños.iAño); Skip_Line;
      
   end LeerEstudiante;
   
   -- Leer lista de estudiantes
   procedure LeerListaEstudiante(argListaEstudiantes: out T_argEstudiante; 
                                 nlong: out Natural) is
   begin
      loop
         put("Cuantos estudiantes: ");
         get(nLong);
         Skip_Line;
         -- Salir cuando se cumple. Leemos hasta que el valor sea valido.
         exit when nlong <= argListaEstudiantes'Length; 
         New_Line;
         Put("ERROR: debe ser un numero menor que ");
         put(argListaEstudiantes'Length,0);
         New_Line;        
      end loop;
      
      -- Leer estudiantes hasta la cantidad indicada
      for i in 1..nLong loop
         LeerEstudiante(argListaEstudiantes (i));
         New_Line;
      end loop;
      
   end LeerListaEstudiante;
   
   -- Declaración de tipo lista de estudiantes: Array de registros
   argListaEstudiantes : T_argEstudiante (1..N) ;  -- Variable de tipo array de registros
   
   nLong : Integer := 0 ;

	 
begin

   LeerListaEstudiante(argListaEstudiantes, nLong);
  
   
end T_05_ArrayDeRegistros ;

