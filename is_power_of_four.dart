void main(){
  int num = 16;
  isPowerOfFour(num);

}

isPowerOfThree(int number){
  if (number<=0) {
    return false;
  }

  while(number!=1){
    if (number %3!=0) {
      return false;
    }
    number = number~/10;
  }
  return true;
}

isPowerOfFour(int number){
  if (number<=0) {
    return false;
  }

  while (number!=1) {
    if (number%4 != 0) {
      return false;
    }
    number = number~/4;
  }

  return true;
}

