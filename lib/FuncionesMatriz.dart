int? regresarNumeroFilas(excel)
{
  for (var table in excel.tables.keys)
  {
    int? columna = excel.tables[table]?.maxColumns;
    int? fila = excel.tables[table]?.maxRows;
    return fila;
  };
}
void llenarMatriz(excel,matrix)
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