void main(){
   String s = ")()[]{}";
   isValid(s);
}
isValid(String s){
  List c = s.split('');
  List stack = [];
  Map<String, String> map = {
    '(':')',
    '{':'}',
    '[':']',
  };
  for (var bracket in c) {
    if(map.containsKey(bracket)){
      stack.add(bracket);
    }else if(map.containsValue(bracket)){
      if (stack.isEmpty || map[stack.last] != bracket) {
        return false;
      }
      stack.removeLast();
    }
  }
  print(stack);
  return stack.isEmpty;
}