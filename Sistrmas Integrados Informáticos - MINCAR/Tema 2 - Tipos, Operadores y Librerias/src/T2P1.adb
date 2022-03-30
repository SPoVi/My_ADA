-- librerias
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure T2P1 is
   -- declaraciones
   iRegistro: Integer;
   fKm, fCombustible, fLitrosPorKm: Float;

begin
   -- instrucciones

   -- Entrada de datos
   New_line ;
   Put ("Introducir numero de registro: ") ;
   Get (iRegistro) ;
   New_Line ;

   New_line ;
   Put ("Introducir kilometros recorridos el ano pasado: ") ;
   Get (fKm) ;
   New_Line ;

   New_line ;
   Put ("Introducir combustible consumido: ") ;
   Get (fCombustible) ;
   New_Line ;

   -- Calulo de litros por kilometro
   fLitrosPorKm := fCombustible / fKm;

   -- Generar informe. Mostrar datos por pantalla.

   Put_line ("INFORME DE RESULTADOS") ;
   New_line ;
   put ("Numero de registro: ") ;
   Put(iRegistro) ; New_Line ;
   put ("Kilometros recorridos el ano pasado: ") ;
   Put(fKm) ; New_Line ;
   put ("Combustible consumido: ") ;
   Put(fCombustible) ; New_Line ;
   put ("Litros por kilometro: ") ;
   Put(fLitrosPorKm) ; New_Line ;

end T2P1;
