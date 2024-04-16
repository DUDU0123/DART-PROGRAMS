import 'dart:io';
import 'dart:math';

void main() {
  List<int> a = [1, 2, 3, 4, 5, 100, 100, 22,250,];
  List list = [1, 2, 2, 1, 1];
  List<int> b = [500, 400, 500];
  List<String> fruits = ['Apple', 'Orange', 'banana'];
  // addElementToArray(list: a, number: 6);
  // removeLastElement(list: a);
  // isEmptyArray(list: a);
  // arrayLength(array: a);
  // mergeTwoArray(list1: a, list2: b);
  // var index = specificIndexFinder(list: a, value: 3);
  // checkElementExist(list: a, value: 3);
  // print(fruits);
  // deleteFirstEelement(list: a);
  // replaceSecond(list: fruits, newValue: "PineApple");
  // reverseArray(list: fruits);
  // sortArray(list: a);
  //var value = checkOnlyNumbersContains(list: fruits);
  // var max = maxValue(list: a);
  // var min = minValue(list: a);
  // removeDuplicates(list: a);
  // var value = isOnlyUniques(list: a);
  //  print({value?"Contains unique elements":"Contains duplicate elements"});
  // copyCreator(list: a);
// findSumOfAll(list: a);
  // averageOfAll(list: a);
  //toLowerCase(list: fruits);
  //toUpperCase(list: fruits);
  //shuffle(list: fruits);
  //countOccurence(list: a);
  //addAllEvenNumbers(list: a);
  //addAllOddNumbers(list: a);
  //diffOfMaxAndMin(list: a);
  //removeElementFromAnIndex(list: a, index: 2);
  //twoSortedToSorted(list: a, list1: b);
  //secondLargestSmallest(a: a);
  //print(arrayPalindrome(list: list));
  // splitIntoChuncks(list: a, size: 3);
 // removeElementFrom(list: a, element: 250);
 //countPrime(list: a);
 //squareOfElement(list: a);
 cubeOfElement(list: a);
  print(a);
}

addElementToArray({required List<int> list, required int number}) {
  list.add(number);
}

removeLastElement({required List list}) {
  list.length--;
}

isEmptyArray({required List list}) {
  // list.isEmpty;
  if (list.length == 0) {
    return true;
  }
  return false;
}

arrayLength({required List array}) {
  //array.length;
  int count = 0;
  for (var element in array) {
    count++;
  }
  return count;
}

mergeTwoArray({required List<int> list1, required List<int> list2}) {
  int count = 0;
  int length = list1.length + list2.length;
  // List<int> c = List.filled(length, 0);
  // for (var i = 0; i < list1.length; i++) {
  //   c[count++] = list1[i];
  // }
  // for (var i = 0; i < list2.length; i++) {
  //   c[count++] = list2[i];
  // }
  for (var i = 0; i < list2.length; i++) {
    list1.add(list2[i]);
  }
  print(list1);
}

specificIndexFinder({required List list, required int value}) {
  List b = [];
  for (var i = 0; i < list.length; i++) {
    if (list[i] == value) {
      b.add(i);
    }
  }
  print(
      "$value is in these index in array : ${b.length > 1 ? b.join(',') : b.join()}");
}

checkElementExist({required List list, required int value}) {
  for (var i = 0; i < list.length; i++) {
    if (list[i] == value) {
      return true;
    }
  }
  return false;
}

deleteFirstEelement({required List list}) {
  for (var i = 0; i < list.length - 1; i++) {
    list[i] = list[i + 1];
  }
  list.length--;

  print(list);
}

replaceSecond({required List list, required String newValue}) {
  list[1] = newValue;
  print(list);
}

reverseArray({required List list}) {
  var temp;
  int n = list.length;
  for (var i = 0; i < n / 2; i++) {
    temp = list[i];
    list[i] = list[n - 1 - i];
    list[n - 1 - i] = temp;
  }
}

sortArray({required List list}) {
  divideAndMergeSort(list: list, start: 0, end: list.length - 1);
}

divideAndMergeSort({required List list, required int start, required int end}) {
  if (start < end) {
    int mid = start + (end - start) ~/ 2;
    divideAndMergeSort(list: list, start: start, end: mid);
    divideAndMergeSort(list: list, start: mid + 1, end: end);
    mergeSort(list: list, start: start, end: end, mid: mid);
  }
}

mergeSort(
    {required List list,
    required int start,
    required int end,
    required int mid}) {
  int i = start;
  int j = mid + 1;
  int k = start;
  List newList = List.filled(end - start + 1, 0);

  while (i <= mid && j <= end) {
    if (list[i] < list[j]) {
      newList[k - start] = list[i];
      i++;
    } else {
      newList[k - start] = list[j];
      j++;
    }
    k++;
  }

  if (i > mid) {
    while (j <= end) {
      newList[k - start] = list[j];
      j++;
      k++;
    }
  } else {
    newList[k - start] = list[i];
    i++;
    k++;
  }

  for (var i = start; i <= end; i++) {
    list[i] = newList[i - start];
  }
}

checkOnlyNumbersContains({required List list}) {
  return list.every((element) => element is int);
}

checkOnlyStringContains({required List list}) {
  return list.every((element) => element is String);
}

maxValue({required List list}) {
  int max = list[0];
  for (var i = 0; i < list.length; i++) {
    if (list[i] > max) {
      max = list[i];
    }
  }
  return max;
}

minValue({required List list}) {
  int min = list[0];
  for (var i = 0; i < list.length; i++) {
    if (list[i] < min) {
      min = list[i];
    }
  }
  return min;
}

removeDuplicates({required List list}) {
  // FIRST METHOD
  Map<int, int> map = {};
  for (var i = 0; i < list.length; i++) {
    map[list[i]] = (map[list[i]] ?? 0) + 1;
  }
  list = map.keys.toList();

// SECOND METHOD
// Set set = Set();
// for (var i = 0; i < list.length; i++) {
//   if (!set.contains(list[i])) {
//     set.add(list[i]);
//   }
// }
// list = set.toList();

// THIRD METHOD
// int count = 0;
// for (var i = 0; i < list.length; i++) {
//   for (var j = i+1; j < list.length; j++) {
//     if (list[i]==list[j]) {
//       list[i] = -1;
//     }
//   }
// }

// list.removeWhere((element) => element==-1);
  print(list);
}

multiplyBy2({required List list}) {
  int count = 0;
  for (var i = 0; i < list.length; i++) {
    list[count++] = list[i] * 2;
  }
  print(list);
}

isOnlyUniques({required List list}) {
  Map<int, int> map = {};
  for (var i = 0; i < list.length; i++) {
    map[list[i]] = (map[list[i]] ?? 0) + 1;
  }
  if (map.values.any((element) => element > 1)) {
    return false;
  }
  return true;
}

copyCreator({required List list}) {
  var copiedArray = [...list];
  print(copiedArray);
  // List b = List.filled(list.length, 0);
  // for (var i = 0; i < list.length; i++) {
  //   b[i] = list[i];
  // }
  print(copiedArray);
}

findSumOfAll({required List<int> list}) {
  int sum = 0;
  for (int i = 0; i < list.length; i++) {
    sum = sum + list[i];
  }
  print(sum);
}

averageOfAll({required List<int> list}) {
  int sum = 0;
  double average;
  for (int i = 0; i < list.length; i++) {
    sum = sum + list[i];
  }
  average = sum / list.length;
  print(average);
}

toLowerCase({required List<String> list}) {
  for (var i = 0; i < list.length; i++) {
    list[i] = list[i].toLowerCase();
  }
  print(list);
}

toUpperCase({required List<String> list}) {
  for (var i = 0; i < list.length; i++) {
    list[i] = list[i].toUpperCase();
  }
  print(list);
}

shuffle({required List list}) {
  Random random = Random();
  var temp;
  for (var i = 0; i < list.length; i++) {
    int j = random.nextInt(i + 1);
    temp = list[j];
    list[j] = list[i];
    list[i] = temp;
  }
}

countOccurence({required var list}) {
  Map<dynamic, int> map = {};
  for (var i = 0; i < list.length; i++) {
    map[list.runtimeType == String
        ? list[i].toString().toLowerCase()
        : list[i]] = (map[list[i]] ?? 0) + 1;
  }
  print(map);
}

addAllEvenNumbers({required List<int> list}) {
  int sum = 0;
  for (var i = 0; i < list.length; i++) {
    if (list[i] % 2 == 0) {
      sum = sum + list[i];
    }
  }
  print(sum);
}

addAllOddNumbers({required List<int> list}) {
  int sum = 0;
  for (var i = 0; i < list.length; i++) {
    if (list[i] % 2 != 0) {
      sum = sum + list[i];
    }
  }

  print(sum);
}

diffOfMaxAndMin({required List<int> list}) {
  int max = list[0];
  int min = list[0];
  for (var i = 0; i < list.length; i++) {
    if (list[i] > max) {
      max = list[i];
    } else if (list[i] < min) {
      min = list[i];
    }
  }
  print(max - min);
}

removeElementFromAnIndex({required List<int> list, required int index}) {
  for (var i = index; i < list.length - 1; i++) {
    list[i] = list[i + 1];
  }
  list.length--;
}

twoSortedToSorted({required List<int> list, required List<int> list1}) {
  sortArray(list: list);
  sortArray(list: list1);

  for (int element in list1) {
    list.add(element);
  }
  sortArray(list: list);
  print(list);
}

secondLargestSmallest({required List a}) {
  int secLarge = a[0];
  int large = a[0];
  int secSmall = a[0];
  int small = a[0];

  for (var i = 0; i < a.length; i++) {
    if (a[i] > large) {
      large = a[i];
    } else if (a[i] > secLarge && a[i] != large) {
      secLarge = a[i];
    } else if (a[i] < small) {
      small = a[i];
    } else if (a[i] < secSmall && a[i] != small) {
      secSmall = a[i];
    }
  }

  print("LARGE: $large");
  print("SMALL: $small");
  print("SECOND LARGE: $secLarge");
  print("SECOND SMALL: $secSmall");
}

arrayPalindrome({required List list}) {
  for (var i = 0; i < list.length / 2; i++) {
    if (list[i] != list[list.length - 1 - i]) {
      return false;
    }
  }
  return true;
}

splitIntoChuncks({required List list, required int size}) {
  List chuncks = [];
  for (var i = 0; i < list.length; i++) {
    chuncks
        .add(list.sublist(i, i + size > list.length ? list.length : i + size));
  }
  print(chuncks);
}

removeElementFrom({required List list, required int element}) {
  if (!list.contains(element)) {
    return;
  }
  for (var i = 0; i < list.length-1; i++) {
    if (list[i] == element) {
      list[i] = list[i + 1];
    }
  }
  list.length--;
  return removeElementFrom(list: list, element: element);
}

isPrime(int n){
  if (n<=0) {
    return false;
  }

  for (var i =2; i <= n/2; i++) {
    if (n%i==0) {
      return false;
    }
  }

  return true;
}

countPrime({required List list}){
  Set set = Set();

  for (var i = 0; i < list.length; i++) {
    if (!set.contains(list[i])) {
      set.add(list[i]);
    }
  }
  list = set.toList();
  print(list);
  int count = 0;
  for (var i = 0; i < list.length; i++) {
    if (isPrime(list[i])) {
      count++;
    }
  }
  print(count);
}


squareOfElement({required List list}){
  var digit;
  for (var i = 0; i < list.length; i++) {
    digit = list[i];
    list[i] = digit *digit;
  }
  print(list);
}

cubeOfElement({required List list}){
  var digit;
  for (var i = 0; i < list.length; i++) {
    digit = list[i];
    list[i] = digit *digit*digit;
  }
  print(list);
}









