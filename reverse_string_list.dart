void main() {
  List<String> s = ["h", "e", "l", "l", "o"];
  reverseVowels('everyone');

  print(s);
}

reverseString(List<String> s) {
  // int start = 0;
  // int end = s.length -1;
  // while (start<end) {
  //   temp = s[start];
  //   s[start] = s[end];
  //   s[end] = temp;
  //   start++;
  //   end--;
  // }
  var temp;
  for (var i = 0; i < s.length / 2; i++) {
    temp = s[i];
    s[i] = s[s.length - 1 - i];
    s[s.length - 1 - i] = temp;
  }
}

removeVowels(List<String> s) {
  int count = 0;
  for (var i = 0; i < s.length; i++) {
    if (!isVowel(s[i])) {
      s[count++] = s[i];
    }
  }
  s.length = count;
}

isVowel(String char) {
  return char == 'a' ||
      char == 'e' ||
      char == 'i' ||
      char == 'o' ||
      char == 'u' ||
      char == 'A' ||
      char == 'E' ||
      char == 'I' ||
      char == 'O' ||
      char == 'U';
}

findVowels({required List<String> s}) {
  List<String> vowels = ['a', 'e', 'i', 'o', 'u'];
  for (var vowel in vowels) {
    if (s.contains(vowel)) {
      print(vowel);
    }
  }
}

reverseVowels(String stringValue){
  List chars = stringValue.split('');
  List<String> vowels = ['a', 'e', 'i', 'o', 'u'];
  int start = 0;
  int end = chars.length-1;
  var temp;

  while (start<end) {
    if (vowels.contains(chars[start]) && vowels.contains(chars[end])) {
      temp = chars[start];
      chars[start]= chars[end];
      chars[end] =temp;

      start++;
      end--;
    }else if(vowels.contains(chars[start])){
      end--;
    }else if(vowels.contains(chars[end])){
      start++;
    }
    else{
      start++;
      end--;
    }
  }
  print(chars.join());
}
