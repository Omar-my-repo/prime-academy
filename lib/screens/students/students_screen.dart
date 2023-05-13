import 'package:flutter/material.dart';
import 'package:prime_academy/model/demo_lists.dart';
import 'package:prime_academy/screens/payment/component/level_card.dart';
import 'package:prime_academy/screens/students/add_student_screen.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            ScreenTitle('Students'),
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
            Expanded(
              child: ListView.separated(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  itemCount: 20,
                  separatorBuilder: (contex, index) {
                    return SizedBox(height: 10);
                  },
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 12),
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
                                            fontSize: 16,
                                            color: Colors.black54)),
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
                                            fontSize: 16,
                                            color: Colors.black54)),
                                  ],
                                ),
                                SizedBox(height: 12),
                              ],
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.edit,
                                  color: Theme.of(context).primaryColor,
                                ))
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
