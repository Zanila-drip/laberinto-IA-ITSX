import 'dart:io';
import 'package:excel/excel.dart';

void main()
{
  List<List<int>> matrix = [[]];

  var file = 'archivosExcel/pruebaUno.xlsx ';
  var bytes = File(file).readAsBytesSync();
  var excel = Excel.decodeBytes(bytes);
  int contador = 0;

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

  int? regresarNumero(excel)
  {
    for (var table in excel.tables.keys)
    {
      for (var row in excel.tables[table]!.rows)
      {
        for (var cell in row)
        {
          int contadorMatriz = excel.tables[table]?.maxRows;
          int contadorLlenado = contadorMatriz;
          int contadorCero = 0;
          int contadorFuncion = 0;


          final value = cell?.value;
          var valor = value.toString();


          //valorMatriz == El dato dentro de la celda
          void matrizAdd(int valorMatriz,int contadorFuncion)
          {
            matrix[contadorFuncion].add(valorMatriz);
            print(contadorFuncion);
          }
          int valorInt = int.parse(valor);
          while(contadorFuncion <= contadorLlenado)
            {
              matrizAdd(valorInt, contadorFuncion);
            }
          if (contadorFuncion <= contadorLlenado)
          {
            matrizAdd(valorInt,contadorFuncion);
            contadorFuncion = 0;
          }
          else
          {
            contadorFuncion++;
          }


        }
      }

    }

  }
  regresarNumero(excel);
  print(matrix);



}
