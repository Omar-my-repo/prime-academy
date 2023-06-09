import 'package:flutter/material.dart';
import 'package:prime_academy/model/demo_lists.dart';
import 'package:prime_academy/screens/student_profile/student_profile_screen.dart';
import 'package:prime_academy/screens/students/add_student_screen.dart';
import 'package:prime_academy/shared/widgets/level_card.dart';
import 'package:prime_academy/shared/widgets/screen_title.dart';

class StudentsScreen extends StatefulWidget {
  static const String routeName = 'StudentsScreen';

  @override
  State<StudentsScreen> createState() => _Students_ScreenState();
}

class _Students_ScreenState extends State<StudentsScreen> {
  int selectedLevel = 0;

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
            ScreenTitle('الطلاب'),
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
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.person,
                                      size: 20,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      'Hassan Gamal',
                                      style: TextStyle(
                                          color: Theme.of(context).primaryColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context, rootNavigator: true)
                                        .pushNamed(
                                            StudentProfileScreen.routeName);
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(8),
                                    margin: EdgeInsets.symmetric(horizontal: 8),
                                    decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        shape: BoxShape.circle),
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.grey[500],
                                      size: 20,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 6),
                            Row(
                              children: [
                                Icon(
                                  Icons.phone_android,
                                  size: 20,
                                  color: Colors.grey,
                                ),
                                SizedBox(width: 10),
                                Text('01123456789',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black54)),
                              ],
                            ),
                            SizedBox(height: 6),
                            Row(
                              children: [
                                Icon(
                                  Icons.contact_mail_rounded,
                                  size: 20,
                                  color: Colors.grey,
                                ),
                                SizedBox(width: 10),
                                Text('Level KG1',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black54)),
                              ],
                            ),
                            SizedBox(height: 12),
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
          Navigator.pushNamed(context, AddStudentScreen.routeName);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
