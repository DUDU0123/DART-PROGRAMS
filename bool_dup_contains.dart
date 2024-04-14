void main(){
  List nums = [1,2,3];
  
  print("List contains duplicate numbers : ${isContainsDuplicates(nums)}");
  print(isHappy(13));

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



bool isHappy(int n) {
  int sum = 0;

  if (n <= 0) {
    return false;
  }

  List<String> list = n.toString().split('');

  for (int i = 0; i < list.length; i++) {
    sum += int.parse(list[i]) * int.parse(list[i]);
  }

  // Termination condition: If the sum is 1, return true (it's a happy number)
  if (sum == 1) {
    return true;
  }
  
  // // Termination condition: If the sum is already visited in a previous iteration, it's not a happy number
  // if (visited.contains(sum)) {
  //   return false;
  // }

  // // Mark the current sum as visited
  // visited.add(sum);

  // Recursively check if the new sum is happy
  return isHappy(sum);
}
