import 'package:flutter/material.dart';
import 'package:prime_academy/model/demo_lists.dart';
import 'package:prime_academy/screens/exams/component/add_multiple_choose_q_screen.dart';
import 'package:prime_academy/screens/exams/component/add_true_false_q_screen.dart';
import 'package:prime_academy/screens/exams/component/all_questions_screen.dart';
import 'package:prime_academy/shared/widgets/custom_text_field.dart';
import 'package:prime_academy/shared/widgets/date_time_widget.dart';
import 'package:prime_academy/shared/widgets/level_card.dart';
import 'package:prime_academy/shared/widgets/screen_title.dart';

class AddExamScreen extends StatefulWidget {
  static const String routeName = 'addExamScreen';

  @override
  State<AddExamScreen> createState() => _AddExamScreenState();
}

class _AddExamScreenState extends State<AddExamScreen> {
  int selectedLevel = 0;
  int selectedSubject = 0;
  DateTime examDate = DateTime.now();
  TimeOfDay examTime = TimeOfDay.now();
  TextEditingController _examDuration = TextEditingController();
  TextEditingController _examType = TextEditingController();
  String _dropDownValue = DemoLists.questionTypes[0];
  int currentStep = 0;

  // TextEditingController _titleController = TextEditingController();
  // TextEditingController _answer1Controller = TextEditingController();
  // TextEditingController _answer2Controller = TextEditingController();
  // TextEditingController _answer3Controller = TextEditingController();
  // TextEditingController _answer4Controller = TextEditingController();
  // String ? modelAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              ScreenTitle('إضافة اختبار'),
              Divider(thickness: 1),
              Stepper(
                steps: getSteps(),
                currentStep: currentStep,
                onStepContinue: () {
                  if (currentStep < getSteps().length - 1) {
                    setState(() {
                      currentStep++;
                    });
                  }
                  // if (currentStep < getSteps().length) {
                  //   switch (currentStep) {
                  //     case 0:
                  //       print('=============next 1 BUTTON PRESSSED');
                  //
                  //       if (infoForm.currentState!.validate()) {
                  //         currentStep++;
                  //         setState(() {});
                  //       }
                  //       break;
                  //     case 1:
                  //       print('=============next 2 BUTTON PRESSSED');
                  //
                  //       currentStep++;
                  //       setState(() {});
                  //       break;
                  //     case 2:
                  //       print(currentStep);
                  //       print('=============Upload BUTTON PRESSSED');
                  //       uploadProductToFireStore();
                  //       break;
                  //   }
                  //}
                },
                onStepCancel: () {
                  if (currentStep > 0) {
                    setState(() {
                      currentStep--;
                    });
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Step> getSteps() {
    return [
      Step(
        isActive: currentStep >= 0,
        state: currentStep > 0 ? StepState.complete : StepState.indexed,
        title: Text(' الصف والمادة'),
        content: firstStepContent(),
      ),
      Step(
        isActive: currentStep >= 1,
        state: currentStep > 1 ? StepState.complete : StepState.indexed,
        title: Text('الوقت والتاريخ'),
        content: secondStepContent(),
      ),
      Step(
        isActive: currentStep >= 2,
        title: Text('الأسئلة'),
        content: thirdStepContent(),
      ),
    ];
  }

  Widget thirdStepContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "اختر نوع السؤال",
          style: TextStyle(color: Colors.grey[600]),
        ),
        SizedBox(height: 4),
        DropdownButtonFormField(
          borderRadius: BorderRadius.circular(14),
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(width: 1, color: Colors.grey),
            ),
          ),
          value: _dropDownValue,
          icon: const Icon(Icons.keyboard_arrow_down),
          items: DemoLists.questionTypes
              .map((item) => DropdownMenuItem(
                  value: item,
                  child: Text(
                    item,
                    overflow: TextOverflow.clip,

                    // style:
                    // Theme.of(context).textTheme.subtitle1,
                  )))
              .toList(),
          onChanged: (value) {
            setState(() {
              _dropDownValue = value ?? _dropDownValue;
            });
          },
        ),
        SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  if (_dropDownValue == DemoLists.questionTypes[1])
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddTrueFalseQScreen()));
                  if (_dropDownValue == DemoLists.questionTypes[0])
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddMultipleChooseQScreen()));
                },
                child: Text('إضافة سؤال'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.withOpacity(.5)),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AllQuestionsScreen()));
                  // showModalBottomSheet(
                  //     context: context,
                  //     builder: (context) {
                  //       return MultipleChooseScreen();
                  //     });
                },
                child: Text('جميع الاسئلة'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange.withOpacity(.5)),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget secondStepContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('اخنر التاريخ',
            style: TextStyle(fontSize: 16, color: Colors.grey[600])),
        SizedBox(height: 4),
        InkWell(
            onTap: () {
              showAndSelectDate(context);
            },
            child: DateTimeWidget(examDate.toString().substring(0, 10))),
        SizedBox(height: 10),
        Text(
          'اختر الوقت',
          style: TextStyle(fontSize: 16, color: Colors.grey[600]),
        ),
        SizedBox(height: 4),
        InkWell(
          onTap: () {
            showAndSelectTime(context);
          },
          // child: buildDateTimeWidget(examTime.format(context).toString()),
          child: DateTimeWidget(examTime.format(context).toString()),
        ),
        SizedBox(height: 20),
        // Text(
        //   'مدة الامتحان',
        //   style: TextStyle(fontSize: 16, color: Colors.grey[600]),
        // ),
        SizedBox(height: 4),
        CustomTextField(
          controller: _examDuration,
          hint: 'اضف مدة الامتحان',
          validator: (value) {},
        ),
      ],
    );
  }

  Widget firstStepContent() {
    return Column(
      children: [
        SizedBox(
          height: 40,
          child: ListView.separated(
              shrinkWrap: false,
              physics: BouncingScrollPhysics(),
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
              shrinkWrap: false,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 2),
              separatorBuilder: (context, index) => SizedBox(width: 10),
              itemBuilder: (context, index) {
                return Center(
                  child: LevelCard(
                    levelName: DemoLists.subjects[index],
                    isSelected: selectedSubject == index,
                    bgColor: Colors.orange.withOpacity(.5),
                    onTab: () {
                      setState(() {
                        selectedSubject = index;
                      });
                    },
                  ),
                );
              }),
        ),
        SizedBox(height: 20),
        CustomTextField(
          controller: _examType,
          validator: (value) {},
          hint: 'اضف مناسبة الامتحان',
        ),
      ],
    );
  }

  Future<void> showAndSelectTime(BuildContext context) async {
    final TimeOfDay? picked =
        await showTimePicker(context: context, initialTime: examTime);
    if (picked != null && picked != examTime) {
      setState(() {
        examTime = picked;
      });
    }
  }

  Future<void> showAndSelectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: examDate,
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(const Duration(days: 30)));
    if (picked != null && picked != examDate) {
      setState(() {
        examDate = picked;
      });
    }
  }
}
