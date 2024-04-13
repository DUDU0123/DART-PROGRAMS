import 'dart:math';

import 'ten_solutions.dart';

void main() {
  // List list = [10, 20, 33, 4, 8, 20, 20, 66, 100, 3, 1, 99, 1, 20, 78, 73, 95];
  // List list1 = [10, 20, 33, 4,9, 66, 46, 3, 1, 55, 20, 78, 98, 95];
  List list = [1, 1, 1, 2, 3,66,66, 4, 5, 5, 5, 5,5,5, 66,66,66,66, 8];
  // List list = ['Hello', 'hAI', 'Good', 'Morning', 'Hoy'];
  splitArray(list: list, size: 3);
}

//Write a Dart program to find the product of all elements in an array.
productOfElements({required List list}) {
  int mul = 1;
  for (int number in list) {
    mul = mul * number;
  }
  print("Product of all elements: $mul");
}

//Create a Dart function to find the median of elements in an array.
medianOfArray({required List list}) {
  divideAndMergeSort(list: list, start: 0, end: list.length - 1);
  print(list);
  int length = list.length;
  if (length % 2 == 0) {
    print("Median : ${list[length ~/ 2]}");
  } else {
    int middleIndex = length ~/ 2;
    int indexBefore = middleIndex - 1;
    print("Median : ${(list[middleIndex] + list[indexBefore]) / 2}");
  }
}

//Write a Dart function to count the occurrences of a specific element in an array.
findElementOccurence({required List list, required int targetElement}) {
  Map<int, int> map = {};
  for (var i = 0; i < list.length; i++) {
    map[list[i]] = (map[list[i]] ?? 0) + 1;
  }
  print("$targetElement is ${map[targetElement]} times in array");
}

//Create a Dart function to find the second largest element in an array.
findSecondLargest({required List list}) {
  int largest = list[0];
  int seclargest = list[0];
  for (var i = 0; i < list.length; i++) {
    if (list[i] > largest) {
      largest = list[i];
    } else if (list[i] > seclargest && list[i] < largest) {
      seclargest = list[i];
    }
  }
  print('$seclargest is the Second Largest element in the array');
}

//Write a Dart function to check if an array is palindrome (reads the same forwards and backwards).
arrayPalindromeCheck({required List list}) {
  int flag = 0;
  for (var i = 0; i < list.length / 2; i++) {
    if (list[i] != list[list.length - 1 - i]) {
      flag = 1;
      break;
    }
  }
  if (flag == 0) {
    print("Palindrome");
  } else {
    print("NOT");
  }
}

//Implement a Dart program to rotate an array to the left by a given number of positions.
rotateElementsByLimit({required List list, required int limit}) {
  int temp;
  for (var i = 0; i < limit; i++) {
    temp = list[0];
    for (var j = 0; j < list.length - 1; j++) {
      list[j] = list[j + 1];
    }
    list[list.length - 1] = temp;
  }
  print(list);
}

//Implement a Dart program to shuffle the elements of an array.
shuffle({required List list}) {
  final random = Random();
  var temp;
  for (var i = 0; i < list.length; i++) {
    var j = random.nextInt(i + 1);
    temp = list[j];
    list[j] = list[i];
    list[i] = temp;
  }
  print(list);
}

//Write a Dart function to find the intersection of two arrays.
findIntersection({required List list1, required List list2}) {
  Set set1 = {...list1};
  Set set2 = {...list2};
  List intersection = [];
  for (var element in set1) {
    if (set2.contains(element)) {
      intersection.add(element);
    }
  }
  print(intersection);
}

//Implement a Dart function to find the mode (most frequent element) of an array.
modeFinder({required List list}) {
  Map<int, int> map = {};
  for (var element in list) {
    map[element] = (map[element] ?? 0) + 1;
  }
  int maxValue = map.values.first;
  List modes = [];
  map.forEach((key, value) {
    if (value>maxValue) {
      maxValue = value;
    }
  });
  map.forEach((key, value) {
    if (maxValue == value) {
      modes.add(key);
    }
  });
  // return modes;
  print("Elements which is in max frequency in array : $modes");
}

//Create a Dart program to split an array into chunks of a given size.
splitArray({required List list, required int size}) {
  List chuncks = [];
  for (var i = 0; i < list.length; i += size) {
    chuncks.add(list.sublist(i,i+size>list.length?list.length: i+size ));
  }
  print(chuncks);
}
