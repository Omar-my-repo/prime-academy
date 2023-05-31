import 'package:flutter/material.dart';
import 'package:prime_academy/model/demo_lists.dart';
import 'package:prime_academy/shared/widgets/level_card.dart';

class AllStudentsScreen extends StatefulWidget {
  static const String routeName = 'attendanceScreen';

  @override
  State<AllStudentsScreen> createState() => _AllStudentsScreenState();
}

class _AllStudentsScreenState extends State<AllStudentsScreen> {
  int selectedLevel = 0;
  int selectedSubject = 0;
  List<int> selectedStudents = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            SizedBox(
              height: 40,
              child: ListView.separated(
                  itemCount: DemoLists.levels.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 2),
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
                  padding: EdgeInsets.symmetric(horizontal: 2),
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
            SizedBox(height: 10),
            Expanded(
              child: ListView.separated(
                  padding: EdgeInsets.only(bottom: 10),
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
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Hassan Gamal',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      label('0112345678952'),
                                    ],
                                  ),
                                ),

                                // Spacer(),
                              ],
                            ),

                            ///

                            ///
                            Align(
                              alignment: Alignment.centerLeft,
                              child: ElevatedButton(
                                  onPressed: () {}, child: Text('حضر')),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.grey[300],
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: ElevatedButton(
            onPressed: () {},
            child: Text('ارسال اشعار بالغياب لاولياء الامور'),
          ),
        ),
      ),
    );
  }

  Widget label(String label) {
    return Text(label,
        style: TextStyle(fontSize: 14, color: Colors.grey[700], height: 1.5));
  }
}
