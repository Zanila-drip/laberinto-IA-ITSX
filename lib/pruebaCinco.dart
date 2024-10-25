import 'dart:io';
import 'package:excel/excel.dart';

void main()
{
  var file = 'archivosExcel/pruebaDos.xlsx ';
  var bytes = File(file).readAsBytesSync();
  var excel = Excel.decodeBytes(bytes);

  int? regresarNumeroFilas(excel)
  {
    for (var table in excel.tables.keys)
    {
      int? columna = excel.tables[table]?.maxColumns;
      int? fila = excel.tables[table]?.maxRows;
      return fila;
    };
  }

  int? filas = regresarNumeroFilas(excel);
  int? columnas = filas;


  List<List<int>> matrix = List.generate(filas!, (i) => List.filled(columnas!, 0),);

  bool? regresarNumeroColumnas(excel)
  {
    for (var table in excel.tables.keys)
    {
      int? columna = excel.tables[table]?.maxColumns;
      int? fila = excel.tables[table]?.maxRows;
      if (columna==fila)
      {
        return true;
      }
      else
      {
        return false;
      }
    };
  };

  void regresarNumero(excel,matrix)
  {
    for (var table in excel.tables.keys)
    {
      int contador = 0;
      for (var row in excel.tables[table]!.rows)
      {
        int contadorDos = 0;
        for (var cell in row)
        {
          final value = cell?.value;
          var valor = value.toString();
          int valorInt = int.parse(valor); //9...8...5...9...8
          //print("Estoy en la posicion $contador y mi data es: $valorInt, tengo un contador extra $contadorDos");
          //Esto era necesario! :D
          matrix[contador][contadorDos] = valorInt;
          contadorDos+=1;
        }
        contador+=1;
      }

    }

  }


}
