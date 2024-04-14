void main() {
  String s = "abcd";
  String t = "abcde";

  findDifference(string1: s, string2: t);
  int num = 38;
  print(addDigits(num));
}

findDifference({required String string1, required String string2}) {
  var s1 = string1.split('');
  var s2 = string2.split('');

  for (var element in s1) {
    if (s2.contains(element)) {
      s2.remove(element);
    }
  }
  print("Letter added additionally: ${s2[0]}");
}

// RECURSION USED HERE
int addDigits(int num) {
  if (num <= 9) {
    return num;
  }
  int rem = 0;
  int sum = 0;
  for (int i = num; num != 0; num = num ~/ 10) {
    rem = num % 10;
    sum = sum + rem;
  }
  return addDigits(sum);
}
