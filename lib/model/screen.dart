import 'package:prime_academy/screens/attendance/attendance.dart';
import 'package:prime_academy/screens/exam_correction/exam_correction_screen.dart';
import 'package:prime_academy/screens/exams/exams_screen.dart';
import 'package:prime_academy/screens/exams_schadule/exams_schadule_screen.dart';
import 'package:prime_academy/screens/homework/homework_screen.dart';
import 'package:prime_academy/screens/level_upgrade/level_upgrade_screen.dart';
import 'package:prime_academy/screens/levels/levels_screen.dart';
import 'package:prime_academy/screens/management/managers_screen.dart';
import 'package:prime_academy/screens/parents/parents_screen.dart';
import 'package:prime_academy/screens/payment/payment_screen.dart';
import 'package:prime_academy/screens/schedule/student_schedule_screen.dart';
import 'package:prime_academy/screens/student_rating/student_rating_screen.dart';
import 'package:prime_academy/screens/students/students_screen.dart';
import 'package:prime_academy/screens/subjects/subjects_screen.dart';
import 'package:prime_academy/screens/teacher/teachers_screen.dart';

class Screen {
  String title;
  String route;
  String iconAsset;

  Screen({required this.title, required this.route, required this.iconAsset});


  static List<Screen> allScreens = [
    Screen(
      title: 'الطلاب',
      route: StudentsScreen.routeName,
      iconAsset: 'assets/icons/students.png',
    ),
    Screen(
      title: 'أولياء الأمور',
      route: ParentsScreen.routeName,
      iconAsset: 'assets/icons/family.png',
    ),
    Screen(
      title: 'المعلمين',
      route: TeachersScreen.routeName,
      iconAsset: 'assets/icons/classroom.png',
    ),
    Screen(
      title: 'المواد الدراسية',
      route: SubjectsScreen.routeName,
      iconAsset: 'assets/icons/book-stack.png',
    ),
    Screen(
      title: 'الصفوف الدراسية',
      route: LevelsScreen.routeName,
      iconAsset: 'assets/icons/school.png',
    ),
    Screen(
      title: 'المدفوعات',
      route: PaymentScreen.routeName,
      iconAsset: 'assets/icons/payment-method.png',
    ),
    Screen(
      title: 'الجدول الدراسي',
      route: StudentScheduleScreen.routeName,
      iconAsset: 'assets/icons/calendar.png',
    ),
    Screen(
      title: 'جدول الإمتحانات',
      route: ExamsScheduleScreen.routeName,
      iconAsset: 'assets/icons/halloween.png',
    ),
    Screen(
      title: 'الواجبات المنزلية',
      route: HomeworkScreen.routeName,
      iconAsset: 'assets/icons/homework.png',
    ),
    Screen(
      title: 'الإختبارات',
      route: ExamsScreen.routeName,
      iconAsset: 'assets/icons/exam.png',
    ),
    Screen(
      title: 'تصحيح الاختبارات',
      route: ExamCorrectionScreen.routeName,
      iconAsset: 'assets/icons/exam_correction.png',
    ),
    Screen(
      title: 'نقل الطلبة',
      route: LevelUpgradeScreen.routeName,
      iconAsset: 'assets/icons/star.png',
    ),

    Screen(
      title: 'تقييم الطلبة',
      route: StudentsRatingScreen.routeName,
      iconAsset: 'assets/icons/student_rating.png',
    ),
    Screen(
      title: 'الحضور',
      route: Attendance.routeName,
      iconAsset: 'assets/icons/attendance.png',
    ),
    Screen(
      title: 'ادارة المستخدمين',
      route: ManagersScreen.routeName,
      iconAsset: 'assets/icons/management.png',
    ),
  ];
}

