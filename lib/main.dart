import 'dart:io';
import 'package:excel/excel.dart';

void main() {
    /*
        They say code is like jokes
        If you have to explain it, it loses its charm!
        Enjoy! Zanila-Drip spookyTime-2024
     */
    List<List<int>> matrix = [];
    var file = 'archivosExcel/pruebaErrorUno.xlsx ';
    var bytes = File(file).readAsBytesSync();
    var excel = Excel.decodeBytes(bytes);

    for (var table in excel.tables.keys)
    {
        /*
            Siempre es bueno conocer el numero de columnas y filas!
            print(excel.tables[table].maxColumns);
            print(excel.tables[table].maxRows);
         */
        if (excel.tables[table]?.maxColumns == excel.tables[table]?.maxRows)
        {
            print("Si bro son iguales!");
            for (var row in excel.tables[table]!.rows)
            {
                for (var cell in row)
                {
                    final value = cell?.value;
                    print('Cell: ${cell?.rowIndex}/${cell?.columnIndex} value: $value');
                    /*
                    Extensive code I wrote to convert the CellValue data type into an integer so
                    I can insert it into the matrix
                    Only God understands these things.
                    Why does Dart make everything so complicated?
                    But here we are!
                */
                    var valor = value.toString();
                    print(valor);
                    int valorInt = int.parse(valor);
                }
            }
        }

        else {
            print("No bro, no son iguales. No sirvo lo siento :(");
        }
        /*
            Es bueno conocer el numero de filas y columnas!
            print(excel.tables[table].maxColumns);
            print(excel.tables[table].maxRows);
        */


    }
}
