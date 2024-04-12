void main(){
  print(plusOne([7,2,8,5,0,9,1,2,9,5,3,6,6,7,3,2,8,4,3,7,9,5,7,7,4,7,4,9,4,7,0,1,1,1,7,4,0,0,6]));
}

 plusOne(List<int> digits) {
    String num = '';
    for(var digit in digits){
        num = num + digit.toString();
    }
   BigInt number = BigInt.parse(num) + BigInt.one;
   num = number.toString();
   return num.split('').map((number) => int.parse(number)).toList();
  }