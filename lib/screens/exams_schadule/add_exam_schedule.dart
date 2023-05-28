import 'package:flutter/material.dart';
import 'package:prime_academy/model/demo_lists.dart';
import 'package:prime_academy/shared/widgets/custom_text_field.dart';
import 'package:prime_academy/shared/widgets/level_card.dart';
import 'package:prime_academy/shared/widgets/main_button.dart';
import 'package:prime_academy/shared/widgets/screen_title.dart';

class AddExamSchedule extends StatefulWidget {
  static const String routeName = 'AddExamSchedule';

  @override
  State<AddExamSchedule> createState() => _AddExamScheduleState();
}

class _AddExamScheduleState extends State<AddExamSchedule> {
  int selectedLevel = 0;
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
              ScreenTitle('إضافة جدول للامتحانت'),
              SizedBox(height: 10),
              SizedBox(
                height: 40,
                child: ListView.separated(
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
              Divider(thickness: 1),
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
                hint: 'اكتب ملاحظاتك عن جدول الامتحانات هنا',
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
}
