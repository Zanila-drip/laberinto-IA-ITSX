import 'package:excel/excel.dart';
import 'dart:io';
void main()
{
  var file = 'archivosExcel/pruebaUno.xlsx ';
  var bytes = File(file).readAsBytesSync();
  var excel = Excel.decodeBytes(bytes);
  crearMatrizConDatos(excel as List<List>);
}
List<List<int>> crearMatrizConDatos(List<List<dynamic>> datosExcel) {
  int filas = datosExcel.length;
  int columnas = datosExcel[0].length;

  List<List<int>> matriz = List.generate(
    filas,
        (i) => List.filled(columnas, 0),
  );

  for (int i = 0; i < filas; i++) {
    for (int j = 0; j < columnas; j++) {
      try {
        var matrix;
        matrix[i][j] = datosExcel[i][j] as int;
      } catch (e) {
        print('Error al convertir el valor a entero: $e');
      }
    }
  }

  return matriz;
}