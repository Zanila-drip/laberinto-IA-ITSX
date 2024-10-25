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
}