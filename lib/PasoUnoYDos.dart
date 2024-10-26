import 'dart:io';
import 'package:excel/excel.dart';

import 'package:Laberinto/FuncionesMatriz.dart';
import 'package:Laberinto/ComprobarSonIguales.dart';

void esqueleto()
{
  var file = 'archivosExcel/pruebaUno.xlsx ';
  var bytes = File(file).readAsBytesSync();
  var excel = Excel.decodeBytes(bytes);

  bool? proceder = regresarNumeroColumnas(excel);
  if(proceder != false)
  {
    int? filas = regresarNumeroFilas(excel);
    int? columnas = filas;
    List<List<int>> matrix = List.generate(filas!, (i) => List.filled(columnas!, 0),);
    llenarMatriz(excel, matrix);
    //imprimirMatrix(matrix, filas);
  }
  else
  {
    print("ERROR ERROR ERROR!!!!!!");
  }
}