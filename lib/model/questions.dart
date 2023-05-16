class Question {
  String type;
  String title;
  String modelAnswer;

  Question(
      {required this.title, required this.modelAnswer, required this.type});
}

class ChooseTheCorrectQuestion extends Question {
  String answer1;
  String answer2;
  String answer3;
  String answer4;

  ChooseTheCorrectQuestion({
    required String title,
    required this.answer1,
    required this.answer2,
    required this.answer3,
    required this.answer4,
    required String modelAnswer,
  }) : super(title: title, modelAnswer: modelAnswer, type: 'ChooseTheCorrect');
}

class TrueOrFalseQuestion extends Question {
  TrueOrFalseQuestion({
    required String title,
    required String modelAnswer,
  }) : super(title: title, modelAnswer: modelAnswer, type: 'TrueOrFalse');
}

List<Question> questions = [
  ChooseTheCorrectQuestion(
      title: 'Choose the correct answer Q1',
      answer1: 'answer11',
      answer2: 'answer12',
      answer3: 'answer13',
      answer4: 'answer14',
      modelAnswer: 'answer12'),
  ChooseTheCorrectQuestion(
      title: 'Choose the correct answer Q2',
      answer1: 'answer21',
      answer2: 'answer22',
      answer3: 'answer23',
      answer4: 'answer24',
      modelAnswer: 'answer23'),
  ChooseTheCorrectQuestion(
      title: 'Choose the correct answer Q3',
      answer1: 'answer31',
      answer2: 'answer32',
      answer3: 'answer33',
      answer4: 'answer34',
      modelAnswer: 'answer31'),
  TrueOrFalseQuestion(title: 'True Or False Q1', modelAnswer: 'True'),
  TrueOrFalseQuestion(title: 'True Or False Q2', modelAnswer: 'False'),
  TrueOrFalseQuestion(title: 'True Or False Q3', modelAnswer: 'True'),
];
