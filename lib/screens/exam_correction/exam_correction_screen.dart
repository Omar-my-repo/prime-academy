import 'package:flutter/material.dart';
import 'package:prime_academy/screens/exam_correction/finshed_exams/finished_exams.dart';
import 'package:prime_academy/screens/exam_correction/unfinished_exams.dart';

class ExamCorrectionScreen extends StatefulWidget {
  static const String routeName = 'eamCorrectionScreen';

  @override
  State<ExamCorrectionScreen> createState() => _ExamCorrectionScreenState();
}

class _ExamCorrectionScreenState extends State<ExamCorrectionScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            'تصحيح الاختبارات',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onError,
            ),
          ),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'اختبارات منتهيه',
                icon: Icon(Icons.check),
              ),
              Tab(
                text: 'اختبارات غير منتهيه',
                icon: Icon(Icons.close_outlined),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          FinishedExams(),
          UnFinishedExams(),
        ]),
      ),
    );
  }
}
