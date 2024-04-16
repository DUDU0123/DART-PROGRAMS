void main() {
  List<int> list = [
    9,
    6,
    4,
    2,
    3,
    5,
    7,
    0,
    1
  ]; // [0,1,2];  //[9,6,4,2,3,5,7,0,1];   // [3,0,1];
   print(missingNumber(list));
  
}

missingNumber(List<int> list) {
  list.sort();
  for (var i = 0; i < list.length; i++) {
    if (list[i] != i) {
      return i;
    }
  }
  return list.length;
}


isPrime(int num){
    if(num<=0){
        return false;
    }

    for(int i = 2; i<num/2;i++){
        if(num%i==0){
            return false;
        }
    }
    return true;
  }

