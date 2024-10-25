import 'dart:math';

import 'package:excel/excel.dart';
void main()
{
  List<List<int>> matrix=[[]];
  int columnas = 5-1;
  int filas = columnas;
  int contador = 0;
  int numeroRandom = 0;
  int valor = 4;
  int inicio = 0;

  while(contador <= filas)
  {
    print("Javier se fumo $contador porros");
    matrix.add([]);
    for (int i=0; i<=filas;i++)
      {
        numeroRandom = Random().nextInt(10);
        matrix[contador].add(numeroRandom);
      }

    contador++;
  }
  print(matrix);

/*
  print(matrix);
  inicio = inicio + 1;
  valor = valor + 1;
  matrix.insert(inicio,[valor]);
  print(matrix);
  valor = valor++;
  matrix[inicio].add(valor);
  print(matrix);
 */

  while(contadorCero <= contadorLlenado)
  {
    matrix.add([]);
    for (int i=0; i<=contadorLlenado;i++)
    {
      matrix[contadorCero].add(valorMatriz);
    }
    contadorCero++;
  }
}