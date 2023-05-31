import 'package:flutter/material.dart';
import 'package:prime_academy/model/demo_lists.dart';
import 'package:prime_academy/screens/exams/add_exam_screen.dart';
import 'package:prime_academy/screens/exams/component/all_questions_screen.dart';
import 'package:prime_academy/shared/widgets/level_card.dart';
import 'package:prime_academy/shared/widgets/screen_title.dart';

class ExamsScreen extends StatefulWidget {
  static const String routeName = 'examsScreen';

  @override
  State<ExamsScreen> createState() => _ExamsScreenState();
}

class _ExamsScreenState extends State<ExamsScreen> {
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
            SizedBox(height: 10),
            ScreenTitle('الاختبارات'),
            SizedBox(height: 10),
            SizedBox(
              height: 40,
              child: ListView.separated(
                  itemCount: DemoLists.levels.length,
                  padding: EdgeInsets.symmetric(horizontal: 2),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => SizedBox(width: 10),
                  itemBuilder: (context, index) {
                    return Center(
                      child: LevelCard(
                        levelName: DemoLists.levels[index],
                        isSelected: selectedLevel == index,
                        onTab: () {
                          setState(() {
                            selectedLevel = index;
                          });
                        },
                      ),
                    );
                  }),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 40,
              child: ListView.separated(
                  itemCount: DemoLists.subjects.length,
                  padding: EdgeInsets.symmetric(horizontal: 2),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => SizedBox(width: 10),
                  itemBuilder: (context, index) {
                    return Center(
                      child: LevelCard(
                        levelName: DemoLists.subjects[index],
                        bgColor: Colors.orange.withOpacity(.5),
                        isSelected: selectedSubject == index,
                        onTab: () {
                          setState(() {
                            selectedSubject = index;
                          });
                        },
                      ),
                    );
                  }),
            ),
            Divider(thickness: 1),
            Expanded(
              child: ListView.separated(
                  padding: EdgeInsets.only(top: 10, bottom: 80),
                  itemCount: DemoLists.homeworkSchedule.length,
                  separatorBuilder: (context, index) => SizedBox(height: 10),
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
                                Text(
                                  'الرياضيات',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                Text(
                                  'Level 1',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                // Spacer(),
                              ],
                            ),
                            Divider(
                              thickness: 1,
                              height: 10,
                            ),

                            ///
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        label('23-12-2023'),
                                        label('120 د'),
                                        label(' امتحان نصف العام'),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,

                                    children: [
                                      label('10:00 صباحاً'),
                                      label('30 درجة'),
                                    ],
                                  ),
                                  SizedBox()
                                ],
                              ),
                            ),

                            ///
                            Align(
                                alignment: Alignment.centerLeft,
                                child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context, rootNavigator: true)
                                          .pushNamed(
                                              AllQuestionsScreen.routeName);
                                    },
                                    child: Text('تفاصيل الاختبار'))),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AddExamScreen.routeName);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Widget label(String label) {
    return Text(label,
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.grey[700],
            height: 1.5));
  }
}
