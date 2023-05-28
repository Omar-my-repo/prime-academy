import 'package:flutter/material.dart';
import 'package:prime_academy/model/demo_lists.dart';
import 'package:prime_academy/shared/widgets/custom_text_field.dart';
import 'package:prime_academy/shared/widgets/date_time_widget.dart';
import 'package:prime_academy/shared/widgets/level_card.dart';
import 'package:prime_academy/shared/widgets/main_button.dart';
import 'package:prime_academy/shared/widgets/screen_title.dart';

class AddHomework extends StatefulWidget {
  static const String routeName = 'addHomework';

  @override
  State<AddHomework> createState() => _AddHomeworkState();
}

class _AddHomeworkState extends State<AddHomework> {
  int selectedLevel = 0;
  int selectedSubject = 0;
  DateTime examDate = DateTime.now();
  TimeOfDay examTime = TimeOfDay.now();
  TextEditingController noteController = TextEditingController();

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
              ScreenTitle('إضافة واجب منزلي'),
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
              Row(
                children: [
                  Text('إختر تاريخ الواجب المنزلي',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54)),
                  SizedBox(width: 10),
                  Expanded(
                    child: InkWell(
                        onTap: () {
                          showAndSelectDate(context);
                        },
                        child: DateTimeWidget(
                            examDate.toString().substring(0, 10))),
                  ),
                ],
              ),
              SizedBox(height: 10),
              // Text(
              //   'Notes',
              //   style: TextStyle(
              //       fontSize: 18,
              //       fontWeight: FontWeight.bold,
              //       color: Colors.black54),
              // ),
              SizedBox(height: 4),
              CustomTextField(
                controller: noteController,
                maxLines: 3,
                validator: (value) {},
                hint: 'ملاحظات عن الواجب المنزلي',
              ),
              SizedBox(height: 30),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      'assets/images/prime_logo.jpg',
                      fit: BoxFit.fill,
                      width: double.infinity,
                      height: 250,
                    ),
                  ),
                  Positioned(
                    right: 10,
                    bottom: 10,
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: IconButton(
                        onPressed: () async {
                          // var imagePicked =
                          // await _picker.pickImage(source: ImageSource.gallery);
                          // if (imagePicked != null) {
                          //   myImage = File(imagePicked.path);
                          //   setState(() {
                          //     isPicked = true;
                          //   });
                          // }
                        },
                        icon: const Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              SizedBox(
                width: double.infinity,
                child: MainButton(text: 'حفظ البيانات', onTap: () {}),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
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
