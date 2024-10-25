import 'dart:io';
import 'package:excel/excel.dart';

void main()
{
    //Dicen que el codigo es como los chistes
    //Si lo explicas, pierde su gracia!
    //Enjoy! Zanila-Drip spookyTime-2024
    List<List<int>> matrix = [[],[]];
    var file = 'archivosExcel/pruebaUno.xlsx ';
    var bytes = File(file).readAsBytesSync();
    var excel = Excel.decodeBytes(bytes);

    for (var table in excel.tables.keys)
    {
        for (var row in excel.tables[table]!.rows)
        {
            for (var cell in row)
            {
                final value = cell?.value;
                print('Celda: ${cell?.rowIndex}/${cell?.columnIndex} valor: $value');
                /*
                    Codigo extenso que hice para convertir el tipo de dato CellValue en un entero para poder meterlo a la matriz
                    Solo dios entiende las cosas, por que Dart las complica tanto?
                    Pero bueno aqui andamos!
                 */
                var valor = value.toString();
                print(valor);
                int valorInt = int.parse(valor);
                int productoValor = valorInt + 2;
                print(productoValor);
            }
        }
    }

}

