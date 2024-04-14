void main(){
  String value = 'hello';
  stringReverse(value: value);
}

stringReverse({required String value}){
  List list =value.split('');
  List stack = [];
  var temp;
  for (var i = 0; i < list.length; i++) {
    stack.add(list[list.length-1-i]);
  }
  print(stack.join());
}

stringReverse1({required String value}){
  List list =value.split('');
  List stack = [];
  var temp;
  for(var char in list){
    stack.add(char);
  }
  String reversedString = '';
  while(stack.isNotEmpty){
    reversedString = reversedString + stack.removeLast();
  }
  print(reversedString);
}

