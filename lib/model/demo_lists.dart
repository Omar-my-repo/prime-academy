import 'package:prime_academy/model/schedule.dart';

class DemoLists {
  ///home screen content and routes

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
    'Junior One',
    'Junior Two',
    'Junior Three',
    'Junior Four'
  ];

  ///dropdownMenu
  static List<String> employeesType = [
    'مدير',
    'مدخل بيانات',
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
    'يناير',
    'فبراير',
    'مارس',
    'ابريل',
    'مايو',
    'يونيو',
    'يوليو',
    'اغسطس',
    'سبتمبر',
    'اكتوبر',
    'نوفمبر',
    'ديسمبر'
  ];

  static List<Schedule> examSchedule = [
    Schedule(
        id: '',
        imgUrl: 'assets/images/student_schedule.png',
        date: '12-12-2012',
        notes: 'ملاحظات عن جدول الامتحانات 1'),
    Schedule(
        id: '',
        imgUrl: 'assets/images/student_schedule.png',
        date: '12-12-2012',
        notes: 'ملاحظات عن جدول الامتحانات 2'),
    Schedule(
        id: '',
        imgUrl: 'assets/images/student_schedule.png',
        date: '12-12-2012',
        notes: 'ملاحظات عن جدول الامتحانات 3'),
    Schedule(
        id: '',
        imgUrl: 'assets/images/student_schedule.png',
        date: '12-12-2012',
        notes: 'ملاحظات عن جدول الامتحانات 4'),
    Schedule(
        id: '',
        imgUrl: 'assets/images/student_schedule.png',
        date: '12-12-2012',
        notes: 'ملاحظات عن جدول الامتحانات 5'),
  ];

  static List<Schedule> studentsSchedule = [
    Schedule(
        id: '',
        imgUrl: 'assets/images/exam_schedule.jpg',
        date: '12-12-2012',
        notes: 'ملاحظات عن جدولنا الدراسي 1'),
    Schedule(
        id: '',
        imgUrl: 'assets/images/exam_schedule.jpg',
        date: '12-12-2012',
        notes: 'ملاحظات عن جدولنا الدراسي 2'),
    Schedule(
        id: '',
        imgUrl: 'assets/images/exam_schedule.jpg',
        date: '12-12-2012',
        notes: 'ملاحظات عن جدولنا الدراسي 3'),
    Schedule(
        id: '',
        imgUrl: 'assets/images/exam_schedule.jpg',
        date: '12-12-2012',
        notes: 'ملاحظات عن جدولنا الدراسي 4'),
    Schedule(
        id: '',
        imgUrl: 'assets/images/exam_schedule.jpg',
        date: '12-12-2012',
        notes: 'ملاحظات عن جدولنا الدراسي 5'),
  ];

  static List<Schedule> homeworkSchedule = [
    Schedule(
        id: '',
        imgUrl: 'assets/images/homework.png',
        date: '12-12-2012',
        notes: 'ملاحظات المعلم عن الواجب المنزلي 1'),
    Schedule(
        id: '',
        imgUrl: 'assets/images/homework.png',
        date: '12-12-2012',
        notes: 'ملاحظات المعلم عن الواجب المنزلي 2'),
    Schedule(
        id: '',
        imgUrl: 'assets/images/homework.png',
        date: '12-12-2012',
        notes: 'ملاحظات المعلم عن الواجب المنزلي 3'),
    Schedule(
        id: '',
        imgUrl: 'assets/images/homework.png',
        date: '12-12-2012',
        notes: 'ملاحظات المعلم عن الواجب المنزلي 4'),
    Schedule(
        id: '',
        imgUrl: 'assets/images/homework.png',
        date: '12-12-2012',
        notes: 'ملاحظات المعلم عن الواجب المنزلي 5'),
  ];

  ///Question Types
  static const List<String> questionTypes = ['اختيار من متعدد', "صواب ام خطأ"];

  static List<String> studentQuestionAnswersChoose = [
    'الاجابة11',
    'الاجابه22',
    'الاجابة31'
  ];
  static List<String> studentQuestionAnswersTrueOrFalse = [
    'True',
    'True',
    'True'
  ];
}
