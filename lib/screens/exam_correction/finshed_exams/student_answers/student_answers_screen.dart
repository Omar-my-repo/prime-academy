import 'package:flutter/material.dart';
import 'package:prime_academy/model/demo_lists.dart';
import 'package:prime_academy/model/questions.dart';

class StudentAnswersScreen extends StatelessWidget {
  static const String routeName = 'StudentAnswersScreen';
  List<ChooseTheCorrectQuestion> chooseQs = [];
  List<TrueOrFalseQuestion> trueOrFalseQs = [];
  List<String> studentAnswersChoose = DemoLists.studentQuestionAnswersChoose;
  List<String> studentAnswersTrueOrFalse =
      DemoLists.studentQuestionAnswersTrueOrFalse;

  @override
  Widget build(BuildContext context) {
    for (var question in questions) {
      if (question.type == 'ChooseTheCorrect') {
        chooseQs.add(question as ChooseTheCorrectQuestion);
      } else {
        trueOrFalseQs.add(question as TrueOrFalseQuestion);
      }
    }

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Visibility(
                  visible: chooseQs.isNotEmpty,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'سؤال الاختيار من متعدد',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      ),
                      const Divider(thickness: 1),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        color: Colors.grey[200],
                        child: ListView.separated(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: chooseQs.length,
                            separatorBuilder: (_, __) =>
                                Divider(height: 30, thickness: 1),
                            itemBuilder: (context, index) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Text(
                                  //   '${index + 1}) ${chooseQs[index].title} :',
                                  //   style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
                                  // ),
                                  questionTitle(
                                      '${index + 1}) ${chooseQs[index].title} :'),
                                  const SizedBox(height: 4),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Wrap(
                                      children: [
                                        questionAnswer(
                                            qAnswer: chooseQs[index].answer1,
                                            modelAnswer:
                                                chooseQs[index].modelAnswer,
                                            studentAnswer:
                                                studentAnswersChoose[index]),
                                        const SizedBox(height: 4),
                                        questionAnswer(
                                            qAnswer: chooseQs[index].answer2,
                                            modelAnswer:
                                                chooseQs[index].modelAnswer,
                                            studentAnswer:
                                                studentAnswersChoose[index]),
                                        const SizedBox(height: 4),
                                        questionAnswer(
                                            qAnswer: chooseQs[index].answer3,
                                            modelAnswer:
                                                chooseQs[index].modelAnswer,
                                            studentAnswer:
                                                studentAnswersChoose[index]),
                                        const SizedBox(height: 4),
                                        questionAnswer(
                                            qAnswer: chooseQs[index].answer4,
                                            modelAnswer:
                                                chooseQs[index].modelAnswer,
                                            studentAnswer:
                                                studentAnswersChoose[index]),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 30),
                                    child: Row(
                                      children: [
                                        Text(
                                          'الدرجة:',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          '${chooseQs[index].degree}/',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        Text(
                                          chooseQs[index].modelAnswer ==
                                                  studentAnswersChoose[index]
                                              ? '${chooseQs[index].degree}'
                                              : '0',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              );
                            }),
                      ),
                      const SizedBox(height: 40),
                    ],
                  )),
              Visibility(
                  visible: trueOrFalseQs.isNotEmpty,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'سؤال صواب ام خطأ',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      ),
                      const Divider(thickness: 1),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        color: Colors.grey[200],
                        child: ListView.separated(
                            itemCount: trueOrFalseQs.length,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            separatorBuilder: (_, __) =>
                                Divider(height: 30, thickness: 1),
                            itemBuilder: (context, index) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  questionTitle(
                                      '${index + 1}) ${trueOrFalseQs[index].title}'),
                                  const SizedBox(height: 4),
                                  Row(
                                    // mainAxisAlignment: MainAxisAlignment.s,
                                    children: [
                                      questionAnswer(
                                          qAnswer: 'True',
                                          modelAnswer:
                                              trueOrFalseQs[index].modelAnswer,
                                          studentAnswer:
                                              studentAnswersTrueOrFalse[index]),
                                      questionAnswer(
                                          qAnswer: "False",
                                          modelAnswer:
                                              trueOrFalseQs[index].modelAnswer,
                                          studentAnswer:
                                              studentAnswersTrueOrFalse[index]),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          'الدرجة:',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          '${trueOrFalseQs[index].degree}/',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        Text(
                                          trueOrFalseQs[index].modelAnswer ==
                                                  studentAnswersTrueOrFalse[
                                                      index]
                                              ? '${trueOrFalseQs[index].degree}'
                                              : '0',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            }),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget questionTitle(String qTitle) {
    return Text(
      qTitle,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Widget questionAnswer(
      {required String qAnswer,
      required String modelAnswer,
      required String studentAnswer}) {
    print(qAnswer);
    print(modelAnswer);
    print(studentAnswer);
    print('----------------------------');
    bool greenAnswer = qAnswer == modelAnswer;
    Color? bgColor = qAnswer == modelAnswer
        ? Colors.green.withOpacity(.5)
        : qAnswer == studentAnswer
            ? Colors.redAccent[100]
            : null;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          // color: greenAnswer ? Colors.green.withOpacity(.5) : null,
          color: bgColor,
          border: Border.all(
              width: bgColor != null ? 0.0 : 0,
              color: bgColor != null ? Colors.grey[200]! : Colors.blueGrey)),
      child: Text(
        qAnswer,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: bgColor != null ? Colors.white : Colors.blueGrey),
      ),
    );
  }
}
