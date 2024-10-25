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
        var contador = 0;
        int contadorLlenado = 0;
        for (var cell in row)
        {
          int contadorMatriz = excel.tables[table]?.maxRows;
          final value = cell?.value;
          var valor = value.toString();
          int valorInt = int.parse(valor);
          matrix[contadorLlenado].add(valorInt);
          print("Contador llenado $contadorLlenado");
          print("Contador simple $contador");
          if (contador==contadorMatriz)
          {
            contadorLlenado+=1;
          }
          else
            {
              contador+=1;
            }
        }
      }

    }

  }
  regresarNumero(excel);
  print(matrix);



}
