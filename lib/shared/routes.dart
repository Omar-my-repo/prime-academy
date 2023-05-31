import 'package:flutter/material.dart';
import 'package:prime_academy/screens/attendance/attendance.dart';
import 'package:prime_academy/screens/exam_correction/exam_correction_screen.dart';
import 'package:prime_academy/screens/exam_correction/finshed_exams/student_answers/student_answers_screen.dart';
import 'package:prime_academy/screens/exam_correction/finshed_exams/students_answers.dart';
import 'package:prime_academy/screens/exams/add_exam_screen.dart';
import 'package:prime_academy/screens/exams/component/all_questions_screen.dart';
import 'package:prime_academy/screens/exams/exams_screen.dart';
import 'package:prime_academy/screens/exams_schadule/add_exam_schedule.dart';
import 'package:prime_academy/screens/exams_schadule/exams_schadule_screen.dart';
import 'package:prime_academy/screens/home/home_screen.dart';
import 'package:prime_academy/screens/homework/add_homework.dart';
import 'package:prime_academy/screens/homework/homework_screen.dart';
import 'package:prime_academy/screens/layout/layout_screen.dart';
import 'package:prime_academy/screens/level_upgrade/level_upgrade_screen.dart';
import 'package:prime_academy/screens/levels/levels_screen.dart';
import 'package:prime_academy/screens/login/login_screen.dart';
import 'package:prime_academy/screens/management/add_employee_screen.dart';
import 'package:prime_academy/screens/management/managers_screen.dart';
import 'package:prime_academy/screens/parent_profile/parent_profile_screen.dart';
import 'package:prime_academy/screens/parents/add_parent_screen.dart';
import 'package:prime_academy/screens/parents/parents_screen.dart';
import 'package:prime_academy/screens/payment/payment_screen.dart';
import 'package:prime_academy/screens/schedule/add_student_schedule.dart';
import 'package:prime_academy/screens/schedule/student_schedule_screen.dart';
import 'package:prime_academy/screens/student_profile/student_profile_screen.dart';
import 'package:prime_academy/screens/student_rating/student_rating_screen.dart';
import 'package:prime_academy/screens/students/add_student_screen.dart';
import 'package:prime_academy/screens/students/students_screen.dart';
import 'package:prime_academy/screens/subjects/subjects_screen.dart';
import 'package:prime_academy/screens/teacher/add_teacher_screen.dart';
import 'package:prime_academy/screens/teacher/teachers_screen.dart';

class MyRoutes {
  static Map<String, Widget Function(BuildContext)> allRoutes = {
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
    StudentProfileScreen.routeName: (_) => StudentProfileScreen(),
    ExamCorrectionScreen.routeName: (_) => ExamCorrectionScreen(),
    StudentsAnswers.routeName: (_) => StudentsAnswers(),
    AllQuestionsScreen.routeName: (_) => AllQuestionsScreen(),
    StudentsRatingScreen.routeName: (_) => StudentsRatingScreen(),
    // AttendanceScreen.routeName:(_)=>AttendanceScreen(),
    Attendance.routeName: (_) => Attendance(),
    StudentAnswersScreen.routeName: (_) => StudentAnswersScreen(),
    ManagersScreen.routeName: (_) => ManagersScreen(),
    AddEmployeeScreen.routeName: (_) => AddEmployeeScreen(),
    ParentProfileScreen.routeName: (_) => ParentProfileScreen(),
  };
}
