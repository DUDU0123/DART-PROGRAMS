void main(){
  String s = 'leetcode';
  print("Index of first occur unique letter: ${firstOccurence(s)}");

}

firstOccurence(String s){
  List list =s.split('');

  for (var value in list) {
    if(list.indexOf(value)==list.lastIndexOf(value)){
      return list.indexOf(value);
    }
  }

  return -1;
}