import 'package:flutter/material.dart';
import 'package:prime_academy/model/demo_lists.dart';
import 'package:prime_academy/shared/widgets/level_card.dart';
import 'package:prime_academy/shared/widgets/main_button.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            ScreenTitle('Exams'),
            SizedBox(height: 10),
            SizedBox(
              height: 40,
              child: ListView.separated(
                  itemCount: DemoLists.levels.length,
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
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => SizedBox(width: 10),
                  itemBuilder: (context, index) {
                    return Center(
                      child: LevelCard(
                        levelName: DemoLists.subjects[index],
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
            SizedBox(height: 10),
            Expanded(
              child: ListView.separated(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  itemCount: DemoLists.homeworkSchedule.length,
                  separatorBuilder: (context, index) => SizedBox(height: 20),
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Text(
                              'Mathemtics',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text('Exam Date: ',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black54)),
                                Text('12-1-2023',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text('Exam Start Time: ',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black54)),
                                Text('10 AM',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text('Exam Last for: ',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black54)),
                                Text('One Hour and Half',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              width: double.infinity,
                              child: MainButton(text: 'Details', onTap: () {}),
                            ),
                            SizedBox(height: 14),
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
          //Navigator.pushNamed(context, AddHomework.routeName);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
