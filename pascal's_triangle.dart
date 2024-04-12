import 'dart:io';

void main() {
  print("Enter row limit: ");
  int row = int.parse(stdin.readLineSync()!);
  var twoDArray = List<List>.generate(
      row, (index) => List.filled(index + 1, (index) => null));
  for (int i = 0; i < row; i++) {
    for (int j = 0; j < i + 1; j++) {
      if (j == i) {
        twoDArray[i][j] = 1;
      } else if (j == 0) {
        twoDArray[i][j] = 1;
      } else {
        //going above and take sum
        twoDArray[i][j] = twoDArray[i - 1][j - 1] + twoDArray[i - 1][j];
      }
    }
  }
  print(twoDArray);
}
