void main() {
  List list = [2, 3, 45, 6, 8, 4, 3, 45, 90, 44, 88, 22, 65, 8];
  findFrequencyOfElementsInList(list: list);

  String value = "Hello Good Morning";
  stringCharFrequency(value: value);

  Map<String, List<double>> studentsScoreSheet = {
    'Suresh': [10, 20, 33, 50],
    'SAM': [20, 100, 15, 78],
    'Sunny': [18, 65, 36, 50],
    'Divya': [5, 21, 43, 25],
    'Jyotika': [13, 58, 79, 63],
    'Kalyani': [100, 99, 64, 72],
    'Padmanabhan': [18, 36, 74, 99],
  };
  findAverageOfStudentScore(studentsScoreSheet: studentsScoreSheet);

  List<String> wordsList = ["mango", "Apple", "Orange", "Bus", "Car", "Auto", "PassionPro", "Bullet", "Ns", "Honda", "Mahindra Thar", "Good Morning", "Happy Onam", "Excellent"];
  var map = wordLengthWordConsistor(wordsList: wordsList);
  print(map);
}

// Write a function that takes a list of words and returns a map where the keys are the lengths of the words and the values are lists of words of that length.
wordLengthWordConsistor({required List<String> wordsList}) {
  Map<int, List<String>> wordsMap = {};
  for (var word in wordsList) {
    int length = word.length;
    if (!wordsMap.containsKey(length)) {
      wordsMap[length] = [];
    }

    wordsMap[length]?.add(word);
  }
  return wordsMap;
}


//Develop a program that calculates the average score of students in a class. The input should be a map where the keys are student names and the values are lists of scores.
findAverageOfStudentScore(
    {required Map<String, List<double>> studentsScoreSheet}) {
  double average = 0;
  double sum = 0;
  double overallSum = 0;
  int markCount = 0;

  studentsScoreSheet.forEach((student, scoreList) {
    sum = 0;
    scoreList.forEach((mark) {
      sum = sum + mark;
      markCount++;
    });
    overallSum = overallSum + sum;
    average = sum / scoreList.length;

    print("Average marks of $student: $average");
  });
  print("Overall class average score: ${overallSum / markCount}");
}

//Write a program that takes a list of integers and counts the frequency of each number in the list.
findFrequencyOfElementsInList({required List list}) {
  Map<int, int> frequencyFindMap = {};
  for (var i = 0; i < list.length; i++) {
    frequencyFindMap[list[i]] = (frequencyFindMap[list[i]] ?? 0) + 1;
  }
  print(frequencyFindMap);
}

//Create a function that takes a string as input and counts the frequency of each character in the string.
stringCharFrequency({required String value}) {
  Map<String, int> frequencyFinder = {};
  for (var i = 0; i < value.length; i++) {
    if (value[i]!=' ') {
      frequencyFinder[value[i].toLowerCase()] =
        (frequencyFinder[value[i].toLowerCase()] ?? 0) + 1;
    }
  }
  print(frequencyFinder);
}
