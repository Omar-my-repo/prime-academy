import 'package:flutter/material.dart';
import 'package:prime_academy/screens/exams/add_exam_screen.dart';
import 'package:prime_academy/screens/exams/exams_screen.dart';
import 'package:prime_academy/screens/exams_schadule/add_exam_schedule.dart';
import 'package:prime_academy/screens/exams_schadule/exams_schadule_screen.dart';
import 'package:prime_academy/screens/home/home_screen.dart';
import 'package:prime_academy/screens/homework/add_homework.dart';
import 'package:prime_academy/screens/homework/homework_screen.dart';
import 'package:prime_academy/screens/layout/layout_screen.dart';
import 'package:prime_academy/screens/level_upgrade/level_upgrade_screen.dart';
import 'package:prime_academy/screens/login/login_screen.dart';
import 'package:prime_academy/screens/parents/add_parent_screen.dart';
import 'package:prime_academy/screens/parents/parents_screen.dart';
import 'package:prime_academy/screens/payment/payment_screen.dart';
import 'package:prime_academy/screens/schedule/add_student_schedule.dart';
import 'package:prime_academy/screens/schedule/student_schedule_screen.dart';
import 'package:prime_academy/screens/students/add_student_screen.dart';
import 'package:prime_academy/screens/students/students_screen.dart';
import 'package:prime_academy/screens/subjects/subjects_screen.dart';
import 'package:prime_academy/screens/teacher/add_teacher_screen.dart';
import 'package:prime_academy/screens/teacher/teachers_screen.dart';

import 'screens/levels/levels_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prime Academy',
      debugShowCheckedModeBanner: false,
      initialRoute: LayoutScreen.routeName,
      theme: ThemeData(
          primaryColor: Color(0xff066db1),
          scaffoldBackgroundColor: Colors.grey[100],
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.transparent,
              elevation: 0,
              // color: Colors.black,
              foregroundColor: Colors.black,
              iconTheme: IconThemeData(color: Colors.black))),
      routes: {
        LayoutScreen.routeName: (_) => LayoutScreen(),
        LoginScreen.routeName: (_) => LoginScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        StudentsScreen.routeName: (_) => StudentsScreen(),
        AddStudentScreen.routeName: (_) => AddStudentScreen(),
        ParentsScreen.routeName: (_) => ParentsScreen(),
        AddParentScreen.routeName: (_) => AddParentScreen(),
        TeachersScreen.routeName: (_) => TeachersScreen(),
        AddTeacherScreen.routeName: (_) => AddTeacherScreen(),
        LevelsScreen.routeName: (_) => LevelsScreen(),
        SubjectsScreen.routeName: (_) => SubjectsScreen(),
        PaymentScreen.routeName: (_) => PaymentScreen(),
        StudentScheduleScreen.routeName: (_) => StudentScheduleScreen(),
        AddStudentSchedule.routeName: (_) => AddStudentSchedule(),
        ExamsScheduleScreen.routeName: (_) => ExamsScheduleScreen(),
        AddExamSchedule.routeName: (_) => AddExamSchedule(),
        HomeworkScreen.routeName: (_) => HomeworkScreen(),
        AddHomework.routeName: (_) => AddHomework(),
        ExamsScreen.routeName: (_) => ExamsScreen(),
        AddExamScreen.routeName: (_) => AddExamScreen(),
        LevelUpgradeScreen.routeName: (_) => LevelUpgradeScreen(),
      },
    );
  }
}
