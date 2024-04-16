void main(){
  List nums = [1,2,3];
  print("List contains duplicate numbers : ${isContainsDuplicates(nums)}");

}

bool isContainsDuplicates(List nums){
  Set set = Set();
  for (var number in nums) {
    if (set.contains(number)) {
      return true;
    };
    set.add(number);
  }
  return false;
}

bool containsDuplicate(List<int> nums) {
    Map<int,int> map = {};
    for(var num in nums){
        map[num] = (map[num]??0)+1;
    }
    return map.values.any((value)=>value>1);
  }




