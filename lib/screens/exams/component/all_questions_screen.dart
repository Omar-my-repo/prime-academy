import 'package:flutter/material.dart';
import 'package:prime_academy/model/questions.dart';

class AllQuestionsScreen extends StatelessWidget {
  List<ChooseTheCorrectQuestion> chooseQs = [];
  List<TrueOrFalseQuestion> trueOrFalseQs = [];

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
                                        questionAnswer(chooseQs[index].answer1,
                                            chooseQs[index].modelAnswer),
                                        const SizedBox(height: 4),
                                        questionAnswer(chooseQs[index].answer2,
                                            chooseQs[index].modelAnswer),
                                        const SizedBox(height: 4),
                                        questionAnswer(chooseQs[index].answer3,
                                            chooseQs[index].modelAnswer),
                                        const SizedBox(height: 4),
                                        questionAnswer(chooseQs[index].answer4,
                                            chooseQs[index].modelAnswer),
                                      ],
                                    ),
                                  ),
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
                                  questionAnswer(
                                      trueOrFalseQs[index].modelAnswer,
                                      trueOrFalseQs[index].modelAnswer),
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

  Widget questionAnswer(String qAnswer, String modelAnswer) {
    bool isTheAnswer = qAnswer == modelAnswer;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: isTheAnswer ? Colors.green.withOpacity(.5) : null,
          border: Border.all(
              width: isTheAnswer ? 0.0 : 0,
              color: isTheAnswer ? Colors.grey[200]! : Colors.blueGrey)),
      child: Text(
        qAnswer,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: isTheAnswer ? Colors.white : Colors.blueGrey),
      ),
    );
  }
}
