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
  print(isValid(c));
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