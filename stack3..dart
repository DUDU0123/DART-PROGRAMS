import 'dart:io';

void main() {
  // List list = [4, 5, 2, 10];
  // findNextGreater(list: list);

  // List<int> temperatures = [73, 74, 75, 71, 69, 72, 76, 73];
  // nextWarmerTemperature(temperatures: temperatures);

  // String value = "())";
  // makeParanthesisValid(value: value);
  // String name = 'Hello everyone';
  // removeVowels(name);

  String c = "()[]{}"; //"()[]{}"  "()"
  print(isPalindrome('Apple'));
}

findNextGreater({required List list}) {
  List stack = [];
  List res = List.filled(list.length, -1);
  for (var i = 0; i < list.length; i++) {
    while (stack.isNotEmpty && list[i] > list[stack.last]) {
      int prevIndex = stack.removeLast();
      res[prevIndex] = list[i];
    }
    stack.add(i);
  }

  print(res);
}

nextWarmerTemperature({required List temperatures}) {
  List res = List.filled(temperatures.length, 0);
  List stack = [];
  for (var i = 0; i < temperatures.length; i++) {
    while (stack.isNotEmpty && temperatures[i] > temperatures[stack.last]) {
      int prevIndex = stack.removeLast();
      res[prevIndex] = i - prevIndex;
    }
    stack.add(i);
  }
  print(res);
}

makeParanthesisValid({required String value}) {
  Map<String, String> map = {
    '{': '}',
    '[': ']',
    '(': ')',
  };
  List stack = [];
  for (var i = 0; i < value.length; i++) {
    if (value[i] == '(' || value[i] == '{' || value[i] == '[') {
      stack.add(value[i]);
    } else if (map.containsValue(value[i]) &&
        stack.isNotEmpty &&
        map[value[i]] == stack.last) {
      stack.removeLast();
    } else {
      stack.add(map[value[i]]);
    }
  }

  String result = '';
  for (String paren in stack) {
    result += paren;
  }
  print(result + value);
}

removeVowels(String name){
  List vowels = ['a','e','i','o','u','A','E','I','O','U'];
  
  List stack = [];
  List value =name.split('');
  for (var i = 0; i < value.length; i++) {
    if (!vowels.contains(value[i])) {
      stack.add(value[i]);
    }
  }
  for (var i = 0; i < stack.length; i++) {
    stdout.write(stack[i]);
  }
}


bool isValid(String value){
  List brackets = value.split('');
  List stack = [];
  Map<String, String> bracketMap = {
    '(':')',
    '{':'}',
    '[':']',
  };
  for (var bracket in brackets) {
    if(bracketMap.containsKey(bracket)){
      stack.add(bracket);
    }else if(bracketMap.containsValue(bracket)){
      //           }    {bracketMap['{'] : }}
                //}!=}                //after removal it is comparing
      if(stack.isEmpty ||  bracket!= bracketMap[stack.removeLast()]){
        return false;
      }
    }
  }
  return stack.isEmpty;
}

bool valid(String s){
  List<String> givenBrackets = s.split('');
    List<String> stack = [];
    Map<String, String> trueMap = {
        ']':'[',
        '}':'{',
        ')':'(',
    };

    for(var bracket in givenBrackets){
        if(trueMap.containsValue(bracket)){
            stack.add(bracket);
        }else if(trueMap.containsKey(bracket)){
            if(stack.isEmpty || stack.removeLast()!=trueMap[bracket]){
                return false;
            }
        }
    }
    return stack.isEmpty;
}

// if n is 1: happy number
bool isHappyy(int n) {
    int sum = 0;
    if(n == 1) {
        return true;
    } else if(n <= 0) {
        return false;
    }
    Set<int> seen = {}; // Keep track of seen sums to detect cycles
    while(sum != 1 && !seen.contains(sum)) {
        sum = 0;
        seen.add(n);
        String numStr = n.toString();
        for(int i = 0; i < numStr.length; i++) {
            int digit = int.parse(numStr[i]);
            sum += digit * digit;
        }
        n = sum; // Update n for the next iteration
    }
    return sum == 1;
}

bool isHappy(int n) {

    int sum = 0;
    if(n==1){
        return true;
    }else if(n<=0){
        return false;
    }else if(n==4){
        return false;
    }
    while(n>0){
     
        int digit = n%10;
        sum = sum+(digit * digit);
        n= n~/10;
    }
    return isHappy(sum);
  }

  bool isPalindrome(String s) {
    int flag = 0;
    s.replaceAll(RegExp(r'[,\s]'),'');
    for(int i = 0;i<s.length/2;i++){
        if(s[i]!=s[s.length-1-i]){
            flag = 1;
        }
    }
    if(flag==0){
      return true;
    }
    return false;
  }