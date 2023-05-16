import 'package:prime_academy/model/schedule.dart';
import 'package:prime_academy/screens/exams/exams_screen.dart';
import 'package:prime_academy/screens/exams_schadule/exams_schadule_screen.dart';
import 'package:prime_academy/screens/homework/homework_screen.dart';
import 'package:prime_academy/screens/level_upgrade/level_upgrade_screen.dart';
import 'package:prime_academy/screens/levels/levels_screen.dart';
import 'package:prime_academy/screens/parents/parents_screen.dart';
import 'package:prime_academy/screens/payment/payment_screen.dart';
import 'package:prime_academy/screens/schedule/student_schedule_screen.dart';
import 'package:prime_academy/screens/students/students_screen.dart';
import 'package:prime_academy/screens/subjects/subjects_screen.dart';
import 'package:prime_academy/screens/teacher/teachers_screen.dart';

class DemoLists {
  ///home screen content and routes
  static const List<String> homeContent = [
    'Students',
    'Parents',
    'Teachers',
    'Subjects',
    'Levels',
    'Payment',
    'Schedule',
    'Examination Schedule',
    'Home Work',
    'Exams',
    'Student Level',
    'exam correction',
    'Exam Results',
    'Student Rate',
    'Attendance',
  ];

  static const List<String> screens = [
    StudentsScreen.routeName,
    ParentsScreen.routeName,
    TeachersScreen.routeName,
    SubjectsScreen.routeName,
    LevelsScreen.routeName,
    PaymentScreen.routeName,
    StudentScheduleScreen.routeName,
    ExamsScheduleScreen.routeName,
    HomeworkScreen.routeName,
    ExamsScreen.routeName,
    LevelUpgradeScreen.routeName,
  ];

  ///icons
  static const List<String> icons = [
    'assets/icons/students.png',
    'assets/icons/family.png',
    'assets/icons/classroom.png',
    'assets/icons/book-stack.png',
    'assets/icons/school.png',
    'assets/icons/payment-method.png',
    'assets/icons/calendar.png',
    'assets/icons/halloween.png',
    'assets/icons/homework.png',
    'assets/icons/exam.png',
    'assets/icons/star.png',
    'assets/images/prime_logo.jpg',
    'assets/images/prime_logo.jpg',
    'assets/images/prime_logo.jpg',
    'assets/images/prime_logo.jpg',
  ];


  ///student screen => add student screen
  static const List<String> parentsName = [
    'omar Muhammad Ali 1',
    'Ahmed Ali Muhammad 1',
    'Muhammd Muhammadad  Ali 5',
    'omar Muhammad Ali 2',
    'Ahmed Ali Muhammad 2',
    'Mohmd Muhammad Ali 7',
    'Ahmed Ali Muhammad 4',
    'omar Muhammad Ali 8',
    'Mahmoud Muhammad Ali 3',
    'omar Muhammad Ali 4',
    'Ali Ali Muhammad 3',
    'omar Muhammad Ali 6',
    'Ahmed Ali Muhammad 8',
    'Dal Muhammad Ali 9',
  ];

  ///for Level
  static List<String> levels = [
    'Kg1',
    'Kg2',
    'Level One',
    'Level Two',
    'Level Three',
    'Level Four'
  ];
  static List<int> selectedLevels = [];

  ///for subjects
  static List<String> subjects = [
    'Arabic',
    'English',
    'French',
    'Mathematics',
    'Science',
    'Physics'
  ];

  ///months
  static const List<String> months = [
    'JANUARY',
    'FEBRUARY',
    'MARCH',
    'APRIL',
    'MAY',
    'JUNE',
    'AUGUST',
    'SEPTEMBER',
    'OCTOBER',
    'NOVEMBER',
    'DECEMBER'
  ];
  static const List<String> monthsShortcuts = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ];

  static List<Schedule> studentsSchedule = [
    Schedule(
        id: '',
        imgUrl: 'assets/images/student_schedule.png',
        date: '12-12-2012',
        notes: 'Schedule 1 note here'),
    Schedule(
        id: '',
        imgUrl: 'assets/images/student_schedule.png',
        date: '12-12-2012',
        notes: 'Schedule 2 note here'),
    Schedule(
        id: '',
        imgUrl: 'assets/images/student_schedule.png',
        date: '12-12-2012',
        notes: 'Schedule 3 note here'),
    Schedule(
        id: '',
        imgUrl: 'assets/images/student_schedule.png',
        date: '12-12-2012',
        notes: 'Schedule 4 note here'),
    Schedule(
        id: '',
        imgUrl: 'assets/images/student_schedule.png',
        date: '12-12-2012',
        notes: 'Schedule 5 note here'),
  ];

  static List<Schedule> examSchedule = [
    Schedule(
        id: '',
        imgUrl: 'assets/images/exam_schedule.jpg',
        date: '12-12-2012',
        notes: 'Schedule 1 note here'),
    Schedule(
        id: '',
        imgUrl: 'assets/images/exam_schedule.jpg',
        date: '12-12-2012',
        notes: 'Schedule 2 note here'),
    Schedule(
        id: '',
        imgUrl: 'assets/images/exam_schedule.jpg',
        date: '12-12-2012',
        notes: 'Schedule 3 note here'),
    Schedule(
        id: '',
        imgUrl: 'assets/images/exam_schedule.jpg',
        date: '12-12-2012',
        notes: 'Schedule 4 note here'),
    Schedule(
        id: '',
        imgUrl: 'assets/images/exam_schedule.jpg',
        date: '12-12-2012',
        notes: 'Schedule 5 note here'),
  ];

  static List<Schedule> homeworkSchedule = [
    Schedule(
        id: '',
        imgUrl: 'assets/images/homework.png',
        date: '12-12-2012',
        notes: 'Schedule 1 note here'),
    Schedule(
        id: '',
        imgUrl: 'assets/images/homework.png',
        date: '12-12-2012',
        notes: 'Schedule 2 note here'),
    Schedule(
        id: '',
        imgUrl: 'assets/images/homework.png',
        date: '12-12-2012',
        notes: 'Schedule 3 note here'),
    Schedule(
        id: '',
        imgUrl: 'assets/images/homework.png',
        date: '12-12-2012',
        notes: 'Schedule 4 note here'),
    Schedule(
        id: '',
        imgUrl: 'assets/images/homework.png',
        date: '12-12-2012',
        notes: 'Schedule 5 note here'),
  ];


  ///Question Types
  static const List<String> questionTypes = [
    'CHOOSE THE CORRECT',
    "TRUE OR FALSE"
  ];
}
