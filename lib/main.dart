import 'dart:io';
import 'package:excel/excel.dart';

void main() {
    /*
        They say code is like jokes
        If you have to explain it, it loses its charm!
        Enjoy! Zanila-Drip spookyTime-2024
     */
    List<List<int>> matrix = [[]];
    var file = 'archivosExcel/pruebaUno.xlsx ';
    var bytes = File(file).readAsBytesSync();
    var excel = Excel.decodeBytes(bytes);
    int contador = 0;

    for (var table in excel.tables.keys)
    {
        /*
            Siempre es bueno conocer el numero de n = filas!
         */
        int? columna = excel.tables[table]?.maxColumns;
        int? fila = excel.tables[table]?.maxRows;

        if (columna == fila)
        {
            print("Si bro son iguales!");
            for (var row in excel.tables[table]!.rows)
            {
                for (var cell in row)
                {
                    final value = cell?.value;
                    /*
                        print('Cell: ${cell?.rowIndex}/${cell?.columnIndex} value: $value');
                        Extensive code I wrote to convert the CellValue data type into an integer so
                        I can insert it into the matrix
                        Only God understands these things.
                        Why does Dart make everything so complicated?
                        But here we are!

                    var valor = value.toString();
                    print(valor);
                    int valorInt = int.parse(valor);

                    */
                    void devolverNumero()
                    {

                    }
                    while(contador <= fila!)
                    {

                        var valor = value.toString();
                        print(valor);
                        int valorInt = int.parse(valor);
                        matrix.add([]);
                        for (int i=0; i<=fila;i++)
                        {
                            matrix[contador].add(valorInt);
                        }
                        contador++;
                    }
                }
            }
        }

        else {
            print("No bro, no son iguales. No sirvo lo siento por ti! :D");
        }
        /*
            Es bueno conocer el numero de filas y columnas!
            print(excel.tables[table].maxColumns);
            print(excel.tables[table].maxRows);
        */


    }
}
