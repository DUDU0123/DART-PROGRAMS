import 'dart:io';

void main() {
  print("Enter row limit: ");
  int row = int.parse(stdin.readLineSync()!);
  print("Enter column limit: ");
  int column = int.parse(stdin.readLineSync()!);
  List<List<dynamic>> matrix = List<List>.generate(
    row,
    (index) => List.generate(
      column,
      (index) => null,
      growable: true,
    ),
    growable: true,
  );

  for (var i = 0; i < row; i++) {
    for (var j = 0; j < column; j++) {
      matrix[i][j] = 'Hello';
    }
  }

  for (var i = 0; i < row; i++) {
    for (var j = 0; j < column; j++) {
      stdout.write('${matrix[i][j]} ');
    }
    print('\n');
  }
}
