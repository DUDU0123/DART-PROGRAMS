import 'dart:io';

void main() {
  List list1 = [10, 20, 33, 4,8, 66, 100, 3, 1, 1, 20, 78, 73, 95];
  List list2 = [500, 300, 330, 67];
  var mergedArray = mergeArrays(list1: list1, list2: list2);
  print(mergedArray);
}

//Write a Dart program to find the sum of all elements in an array.
findSumOfElements({required List list}) {
  int sum = 0;
  for (int number in list) {
    sum = sum + number;
  }
  print("Sum of all elements: $sum");
}

//Create a Dart function to find the maximum element in an array.
findMax({required List list}) {
  int max = list[0];
  for (var i = 0; i < list.length; i++) {
    if (list[i] > max) {
      max = list[i];
    }
  }
  print("Largest element: $max");
}

//Write a Dart function to find the minimum element in an array.
findMin({required List list}) {
  int min = list[0];
  for (var i = 0; i < list.length; i++) {
    if (list[i] < min) {
      min = list[i];
    }
  }
  print("Smallest element: $min");
}

//Implement a Dart program to calculate the average of elements in an array.
findAverage({required List list}) {
  int average = 0;
  double sum = 0;
  for (var number in list) {
    sum = sum + number;
  }
  average = sum ~/ list.length;
  print("Average: $average");
}

//Create a Dart function to reverse an array.
reverseArray({required List list}) {
  for (var i = list.length - 1; i >= 0; i--) {
    stdout.write('${list[i]} ');
  }
}

//Write a Dart function to check if an array contains a specific element.
checkIsPresent({required List list, required int numberToCheck}) {
  if (list.contains(numberToCheck)) {
    print("$numberToCheck found in array");
  } else {
    print("$numberToCheck not found in array");
  }
}

//Implement a Dart program to remove duplicate elements from an array.
removeDuplicate({required List list}) {
  Map<int, int> numbers = {};
  for (var i = 0; i < list.length; i++) {
    numbers[list[i]] = (numbers[list[i]] ?? 0) + 1;
  }
  print(numbers.keys.toList());
}

//Write a Dart function to find the index of a specific element in an array.
findIndexOfElement({required List list, required int targetElement}) {
  for (var i = 0; i < list.length; i++) {
    if (list[i] == targetElement) {
      print("Index of $targetElement is ${i}");
      break;
    }
  }
}

//Create a Dart program to merge two arrays into a single array.
mergeArrays({required List list1, required List list2}) {
  int mergeListLength = list1.length + list2.length;
  List mergedArray = [...list1];
  int k = 0;
  for (var i = 0; i < list2.length; i++) {
    mergedArray.add(list2[i]);
  }
 return mergedArray;
}

//Implement a Dart function to sort elements of an array in ascending order.
//We can do normal sorting first then we can do merge sort
sortArrayNormalMethod({required List list}) {
  int temp;
  for (var i = 0; i < list.length; i++) {
    for (var j = i + 1; j < list.length; j++) {
      if (list[i] > list[j]) {
        temp = list[i];
        list[i] = list[j];
        list[j] = temp;
      }
    }
  }
  print(list);
}

// Now let's try merge sort
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
    if (list[i] <= list[j]) {
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
    while (i <= mid) {
      newList[k - start] = list[i];
      i++;
      k++;
    }
  }

  for (var i = start; i <= end; i++) {
    list[i] = newList[i - start];
  }
}
