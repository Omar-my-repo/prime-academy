import 'package:flutter/material.dart';

import 'sections/all_students_screen.dart';
import 'sections/present_students_screen.dart';

class Attendance extends StatelessWidget {
  static const String routeName = 'attendance';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            'الحضور',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onError,
            ),
          ),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'الجميع',
                icon: Icon(Icons.align_horizontal_left),
              ),
              Tab(
                text: 'حاضر',
                icon: Icon(Icons.check),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          AllStudentsScreen(),
          PresentStudentScreen(),
        ]),
      ),
    );
  }
}
