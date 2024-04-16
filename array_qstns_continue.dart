void main(){
  List<int> a = [1, 2, 3, 4, 5,5,22,22, 250, 250,100, 22,250,];
  List<int> b = [500,2,300,100,100];
  String name = "Somethings";
  List<String> fruits = ['Apple', 'Orange', 'banana'];
  // name = replaceWithAnotherValue(name);
  // overWriteListElement(a: fruits, matchData: "apple", newData: "U");
  // overWriteListElement(a: a, matchData: 22, newData: 39);
  removeVowels(a: "Hello");

}

isHaveCommonElements({required List a, required List b}){
  List common = [];
  List a1 = [];
  List b1 = [];
  for (var i = 0; i < a.length; i++) {
    if (!a1.contains(a[i])) {
      a1.add(a[i]);
    }
  }
  for (var i = 0; i < b.length; i++) {
    if (!b1.contains(b[i])) {
      b1.add(b[i]);
    }
  }
  var list1 = a1.toList();
  var list2 = b1.toList();
  int flag =0;
  for (var i = 0; i < list1.length; i++) {
    for (var j = 0; j < list2.length; j++) {
      if(list1[i]==list2[j]){
        flag = 1;
        common.add(list1[i]);
        list2.remove(list2[j]);
        break;
      }
    }
  }
  if(flag == 0){
    print("No common elements");
  }else{
    print("Common elements found");
  }
  print(common.isNotEmpty?"Common Elements : ${common}":'');
  print(list2);
}

countDuplicateElements({required List a}){
  int count = 0;
  Map<int, int> map = {};
  for (var i = 0; i < a.length; i++) {
    map[a[i]]= (map[a[i]]??0)+1;
  }
  map.values.where((element) {
    if (element>1) {
      count++;
    }
    return element>1;
  }).toList();

  print(count);
  a = map.keys.toList();
}

uniqueElements({required List a, required List b}){
  List unique = [];
  for (var i = 0; i < a.length; i++) {
    if (!unique.contains(a[i])) {
      unique.add(a[i]);
    }
  }
  for (var i = 0; i < b.length; i++) {
    if (!unique.contains(b[i])) {
      unique.add(b[i]);
    }
  }
  print(unique);
}

uniques({required List a}){
  List unique = [];
  for (var i = 0; i < a.length; i++) {
    if (!unique.contains(a[i])) {
      unique.add(a[i]);
    }
  }
  print(unique);
}

replaceWithAnotherValue(String value){
  List<String> a = value.split('');
  for (var i = 0; i < a.length; i++) {
    if (a[i].toLowerCase()=='s') {
      a[i]='h';
    }
  }
  return a.join();
}

overWriteListElement({required List a,required matchData, required newData}){
  for (var i = 0; i < a.length; i++) {
    if ((a[i].runtimeType == String?a[i].toString().toLowerCase():a[i])==matchData) {
      a[i] = newData;
    }
  }
  print(a);
}

//Find the majority element in an array.
majorityElementFinder({required List a}){
  Map<int,int> map = {};
  int maxKey = 0;
  int maxValue = 0;
  for (var i = 0; i < a.length; i++) {
    map[a[i]] = (map[a[i]]??0)+1;
  }

  map.forEach((key, value) {
    if (value>maxValue) {
      maxKey = key;
      maxValue = value;
    }
  });

  print("Element $maxKey is repeated $maxValue times in the array and it is the majority element in the array");
}

removeVowels({required String a}){
  List val = a.split('');
  List stack = [];
  List vowels = ['a','e','i','o','u','A','E','I','O','U'];
  for (var i = 0; i < val.length; i++) {
   stack.add(val[i]);
  }
  for (var i = 0; i < stack.length; i++) {
    if (vowels.contains(stack[i])) {
      stack.remove(stack[i]);
    }
  }
  a = stack.join();
  print(a);
}








