void main()
{
  int rows = 3;
  int cols = 3;

  List<List<int>> matrix = List.generate(rows, (i) => List.filled(cols, 0),);


  matrix[0][0] = 5;
  print(matrix);
}