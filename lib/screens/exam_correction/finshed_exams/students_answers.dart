import 'package:flutter/material.dart';
import 'package:prime_academy/shared/widgets/screen_title.dart';

import 'student_answers/student_answers_screen.dart';

class StudentsAnswers extends StatefulWidget {
  static const String routeName = 'studentsAnswers';

  @override
  State<StudentsAnswers> createState() => _StudentsAnswersState();
}

class _StudentsAnswersState extends State<StudentsAnswers> {
  int selectedLevel = 0;
  int selectedSubject = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ScreenTitle('اجوبة الطلبة'),
            SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 0,
                color: Colors.blueGrey.withOpacity(.2),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('عدد الطلبه: 30'),
                          Text('طلبة ادوا الامتحان: 27'),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('الدرجة الكلية'),
                          Text(
                            '50',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.orangeAccent),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                  padding: EdgeInsets.only(top: 10, bottom: 30),
                  itemCount: 20,
                  separatorBuilder: (contex, index) {
                    return SizedBox(height: 5);
                  },
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.blue,
                                  child: CircleAvatar(
                                    radius: 18,
                                    backgroundImage:
                                        AssetImage('assets/images/student.jpg'),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Column(
                                  children: [
                                    Text(
                                      'Hassan Gamal',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    label('011234567895'),
                                  ],
                                ),
                                Spacer(),
                                Text(
                                  '50 / 30',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.orange.withOpacity(.8)),
                                ),
                                // Spacer(),
                              ],
                            ),

                            ///

                            ///
                            Align(
                                alignment: Alignment.centerLeft,
                                child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context,
                                          StudentAnswersScreen.routeName);
                                    },
                                    child: Text('عرض الاجوبة'))),
                            SizedBox(height: 4),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }

  Widget label(String label) {
    return Text(label,
        style: TextStyle(fontSize: 14, color: Colors.grey[700], height: 1.5));
  }
}
