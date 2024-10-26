import 'dart:io';
import 'package:excel/excel.dart';

import 'package:Laberinto/FuncionesMatriz.dart';
import 'package:Laberinto/ComprobarSonIguales.dart';
import 'package:Laberinto/PasoCuatroCriterioesDeMovimiento.dart';

void main()
{
  var file = 'archivosExcel/pruebaUno9x9.xlsx ';
  var bytes = File(file).readAsBytesSync();
  var excel = Excel.decodeBytes(bytes);

  int? filas = regresarNumeroFilas2(excel);
  int? columnas = regresarNumeroColumnas2(excel);

  List<List<int>> matrix = List.generate(filas!, (i) => List.filled(columnas!, 0),);
  llenarMatriz(excel, matrix);

  print(matrix);


}
