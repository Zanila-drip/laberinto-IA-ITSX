import 'package:Laberinto/FuncionesMatriz.dart';
class Matriz
{
  List<List<int>> _matrix= const [[]];
  int _contador = 0;
  int _contador2 = 0;
  int _filas = 0;

  get getMatrix => _matrix;
  set setMatrix(List<List<int>> matrix)=> _matrix = matrix;

  get getContador => _contador;
  set setContador(int contador)=> _contador = contador;

  get getContador2 => _contador2;
  set setContador2(int contador2)=> _contador2 = contador2;

  get getFilas => _filas;
  set setFilas(int filas)=> _filas = filas;

  numeroFilas()
  {
    this._filas = this._matrix.length-1;
  }
  imprimirMatrix() {
    this._matrix.forEach(print);
  }
  encontrarInicioCero()
  {
    bool encontrado = false;
    this._matrix.forEach((fila) {if (fila.contains(0)) {encontrado = true;}});
    print('¿Se encontró el número 5? $encontrado');
  }
  imprimirTipo()
  {
    print(this._matrix.runtimeType);
  }
}
class TipoMovimiento extends Matriz
{
  List<List<int>> _matrix= const [[]];
  int _columna = 0;
  int _fila = 0;
  List<List<int>> _posicionCero=[[]];
  List<List<int>> _posicionActual= const [[]];

  get getColumna =>_columna;
  set setColumna(int columna) => _columna = columna;

  get getFila => _fila;
  set setFila (int fila) `=> _fila = fila;

  get getMatrix => _matrix;
  set setMatrix(List<List<int>> matrix)=> _matrix = matrix;

  get getPosicionCero => _posicionCero;
  set setPosicionCero(List<List<int>> posicionCero)=>_posicionCero = posicionCero;

  get getPosicionActual => _posicionActual;
  set setPosicionActual(List<List<int>> posicionActual)=> _posicionActual = posicionActual;
  encontrarCero2()
  {
    for (var i = 0; i < this._matrix.length; i++)
    {
      for (var j = 0; j < this._matrix[i].length; j++)
      {
        if (this._matrix[i][j] == 0)
        {
          setColumna = i;
          setFila = j;
        }
      }
    }
    return null; // No se encontró ningún cero
  }
  movimientoIzquierda()
  {
    getColumna;
    getFila;
    setFila = getFila - 1;
    return this._matrix[getColumna][getFila];
  }
  movimientoDerecha()
  {
    getColumna;
    getFila;
    setFila = getFila + 1;
    return this._matrix[getColumna][getFila];
  }
  movimientoArriba()
  {
    getColumna;
    getFila;
    setColumna = getColumna - 1;
    return this._matrix[getColumna][getFila];
  }
  movimientoAbajo()
  {
    getColumna;
    getFila;
    setColumna = getColumna + 1;
    return this._matrix[getColumna][getFila];

  }
  posicionActual()
  {
    print("Estoy en la posicion $getColumna $getFila") ;
  }


}