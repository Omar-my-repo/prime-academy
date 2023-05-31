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
  int degree;

  ChooseTheCorrectQuestion({
    required String title,
    required this.answer1,
    required this.answer2,
    required this.answer3,
    required this.answer4,
    required this.degree,
    required String modelAnswer,
  }) : super(title: title, modelAnswer: modelAnswer, type: 'ChooseTheCorrect');
}

class TrueOrFalseQuestion extends Question {

  int degree;

  TrueOrFalseQuestion(
      {required String title, required String modelAnswer, required this.degree})
      : super(title: title, modelAnswer: modelAnswer, type: 'TrueOrFalse');
}

List<Question> questions = [
  ChooseTheCorrectQuestion(
    title: 'عنوان السؤال الأول من اخ تيار من متعدد تيار من متعدد تيار من متعدد',
    answer1: 'الاجابة11',
    answer2: 'الاجابه12',
    answer3: 'الاجابه13',
    answer4: 'الاجابه14',
    modelAnswer: 'الاجابه12',
    degree: 2,
  ),
  ChooseTheCorrectQuestion(
      title: 'عنوان السؤال الثاني من اختيار من متعدد',
      answer1: 'الاجابة21',
      answer2: 'الاجابه22',
      answer3: 'الاجابه23',
      answer4: 'الاجابه24',
      degree: 2,
      modelAnswer: 'الاجابه22'),
  ChooseTheCorrectQuestion(
      title: 'عنوان السؤال الثالث من اختيار من متعدد',
      answer1: 'الاجابة31',
      answer2: 'الاجابه32',
      answer3: 'الاجابه33',
      answer4: 'الاجابه34',
      degree: 2,
      modelAnswer: 'الاجابه32'),
  TrueOrFalseQuestion(
    title: 'السؤال الاول من صواب ام خطأ',
    modelAnswer: 'True',
    degree: 2,
  ),
  TrueOrFalseQuestion(
    title: 'السؤال الثاني من صواب ام خطأ',
    modelAnswer: 'False',
    degree: 2,
  ),
  TrueOrFalseQuestion(
    title: 'السؤال الثالث من صواب ام خطأ',
    modelAnswer: 'True',
    degree: 2,
  ),
];
