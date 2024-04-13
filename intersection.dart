void main() {
  List<int> nums1 = [1, 2, 2, 1];
  //[1,2,8,22,34,3]
  List<int> nums2 = [
    2,
    2,
  ];
  print(intersect(nums1, nums2));
}

//UNIQUE 
// intersect(List<int> nums1, List<int> nums2){
//   Set num1 = {...nums1};
//   Set num2 = {...nums2};
//   List intersection = [];
//   for (var number in num2) {
//     if (num1.contains(number)) {
//       intersection.add(number);
//     }
//   }
//   return intersection;
// }

//DUPLICATE 
intersect(List<int> nums1, List<int> nums2) {
  Map<int, int> map = {};
  List intersection = [];
  for (var number in nums1) {
    map[number] = (map[number] ?? 0) + 1;
  }
  for (var number in nums2) {
    if (map.containsKey(number)) {
      intersection.add(number);
      map[number] = map[number]! - 1;
    }
  }
  return intersection;
}
