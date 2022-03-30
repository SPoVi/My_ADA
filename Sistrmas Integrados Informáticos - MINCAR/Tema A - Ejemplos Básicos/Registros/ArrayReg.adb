with Ada.Text_IO;use Ada.Text_IO;
procedure ArrayReg is
   type T_Mes is (Enero, Febrero, MArzo, Abril, Mayo, Junio, Julio, Agosto,
                  Septiembre, Octubre, Noviembre, Diciembre);
   subtype T_spDia is Positive range 1..31;

   type T_rgFecha is
      record
         sp_Dia: T_spDia;
         Mes: T_Mes;
         iAño: Integer;
      end record;

   type T_Asignatura is (Historia, Geografía, Matemáticas);
   type T_nNotas is array (T_asignatura) of Natural range 0..100;

   type T_rgEstudiante is
      record
         rgCumpleaños: T_rgFecha;
         nNotas: T_nNotas:= (others=>0);
      end record;

   rgEstudiante_1: T_rgEstudiante;


begin

   rgEstudiante_1.rgCumpleaños:=(19,Agosto,1984);
   rgEstudiante_1.nNotas:=(5,15,99);

   rgEstudiante_1:= (rgCumpleaños=>(19,Agosto,1984), nNotas=>(5,15,99));

   rgEstudiante_1.rgCumpleaños.sp_Dia:=19;
   rgEstudiante_1.nNotas(Historia):=5;

end ArrayReg;
