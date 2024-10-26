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

  bool? proceder = regresarNumeroColumnas(excel);
  if(proceder != false)
  {
    int? filas = regresarNumeroFilas2(excel);
    int? columnas = filas;
    List<List<int>> matrix = List.generate(filas!, (i) => List.filled(columnas!, 0),);
    llenarMatriz(excel, matrix);
    //encontrarInicio(matrix,filas);

    //Matriz uno = Matriz(); uno.setMatrix=matrix;
    //uno.imprimirMatrix();
    //uno.encontrarInicioCero();
    //uno.pruebaForEach();
    //uno.numeroFilas();
    //uno.encontrarCero2();
    //TipoMovimiento dos = TipoMovimiento(); dos.setMatrix=matrix;
    //print(dos.getMatrix);
    Matriz uno = Matriz(); uno.setMatrix=matrix;
    TipoMovimiento dos = TipoMovimiento();dos.setMatrix= uno.getMatrix;
    dos.encontrarCero2();
    dos.posicionActual();




  }
  else
  {
    print("ERROR ERROR ERROR!!!!!!");
  }

}
