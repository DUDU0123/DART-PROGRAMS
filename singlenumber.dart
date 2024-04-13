void main() {
  print(findSingleNumber(list: [2, 2, 1,6,1,4,4,5,5]));
}

findSingleNumber({required List list}){
  int count = 0;
  int number = 0;
  for (var i = 0; i < list.length; i++) {
    count = 0;
    for (var j = 0; j < list.length; j++) {
      if (list[i]==list[j]) {
        count++;
      }
    }
    if(count == 1){
      number = list[i];
    }
  }
  return number;
}
