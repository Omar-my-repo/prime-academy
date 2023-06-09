import 'package:flutter/material.dart';
import 'package:prime_academy/model/demo_lists.dart';
import 'package:prime_academy/shared/widgets/custom_text_field.dart';
import 'package:prime_academy/shared/widgets/main_button.dart';
import 'package:prime_academy/shared/widgets/screen_title.dart';

class SubjectsScreen extends StatefulWidget {
  static const String routeName = 'subjectScreen';

  @override
  State<SubjectsScreen> createState() => _SubjectsScreenState();
}

class _SubjectsScreenState extends State<SubjectsScreen> {
  TextEditingController _subjectController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            ScreenTitle('المواد الدراسية'),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.separated(
                  itemCount: DemoLists.levels.length,
                  separatorBuilder: (context, index) => SizedBox(height: 4),
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 2,
                      child: ExpansionTile(
                        title: Text(
                          DemoLists.levels[index],
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.2),
                        ),
                        children: [
                          Container(
                            height: 110,
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            color: Colors.grey[200],
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10),
                                Expanded(
                                  child: ListView.separated(
                                      itemCount: DemoLists.subjects.length,
                                      scrollDirection: Axis.horizontal,
                                      separatorBuilder: (context, index) =>
                                          SizedBox(width: 10),
                                      itemBuilder: (context, index) {
                                        return Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 12),
                                          decoration: BoxDecoration(
                                              color:
                                                  Colors.orange.withOpacity(.5),
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          child: Center(
                                            child: Text(
                                              DemoLists.subjects[index],
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        );
                                      }),
                                ),
                                SizedBox(height: 10),
                                ElevatedButton(
                                    onPressed: () {
                                      showModelSheet();
                                    },
                                    child: Text('إضافة مادة')),
                                SizedBox(height: 10),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }

  showModelSheet() {
    return showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(14), topLeft: Radius.circular(14)),
        ),
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .2,
                      margin: EdgeInsets.symmetric(vertical: 6),
                      color: Colors.grey[400],
                      height: 4,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'إضافة مادة دراسية',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 10),
                CustomTextField(
                  controller: _subjectController,
                  validator: (value) {},
                  label: 'اكتب اسم المادة',
                ),
                Spacer(),
                MainButton(text: 'حفظ البيانات', onTap: () {}),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          );
        });
  }
}
