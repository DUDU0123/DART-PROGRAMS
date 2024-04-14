void main(){
  List list = [1,2,3,4,5,6,7,8,9,10];
  // for (var number in list) {
  //   if (isPrime(number)) {
  //     print('$number is Prime');
  //   }else{
  //     print('$number is not Prime');
  //   }
  // }
  for (var i = 0; i < 100; i++) {
    if (isPrime(i)) {
      print(i);
    }
  }
}

isPrime(int number){
  int flag = 0;
  if(number<=0){
    return false;
  }
  for (var i = 2; i <=number/2; i++) {
    if(number%i==0){
      return false;
    }
  }
  return true;
}

