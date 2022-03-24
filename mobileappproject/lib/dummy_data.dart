class Question {
  static int currentID = 0;
  int questionId = currentID;
  String questionName;
  String answer1;
  String answer2;
  String answer3;
  String answer4;
  bool ans1 = false;
  bool ans2 = false;
  bool ans3 = false;
  bool ans4 = false;
  String rightanswer;
  bool useranswer = false;
  Question({
    required this.questionName,
    required this.answer1,
    required this.answer2,
    required this.answer3,
    required this.answer4,
    required this.rightanswer,
  }) {
    currentID = currentID + 1;
  }
}

class DummyData {
  static List<Question> question = [
    Question(
      questionName: "In which ocean 'Bermuda Triangle' is located ?",
      answer1: "Indian",
      answer2: "Atlantic",
      answer3: 'Pacific',
      answer4: 'Arctic',
      rightanswer: 'Atlantic',
    ),
    Question(
        questionName: "Which country is also known as 'Land of Rising Sun' ?",
        answer1: "Australia",
        answer2: "New Zealand",
        answer3: 'China',
        answer4: 'Japan',
        rightanswer: 'Japan'),
    Question(
        questionName: "Which continent has the highest number of countries ?",
        answer1: "Asia",
        answer2: "Europe",
        answer3: 'Africa',
        answer4: 'North America',
        rightanswer: 'Africa'),
    Question(
        questionName:
            "How many times has England won the mens football world cup ? ",
        answer1: "10",
        answer2: "4",
        answer3: '2',
        answer4: '1',
        rightanswer: '1'),
    Question(
        questionName:
            "In which part of your body would you find the curciate ligament ?",
        answer1: "knee",
        answer2: "head",
        answer3: 'chest',
        answer4: 'hand',
        rightanswer: 'knee'),
  ];
}
