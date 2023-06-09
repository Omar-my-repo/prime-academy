import 'package:flutter/material.dart';
import 'package:prime_academy/model/demo_lists.dart';
import 'package:prime_academy/shared/widgets/custom_text_field.dart';
import 'package:prime_academy/shared/widgets/main_button.dart';
import 'package:prime_academy/shared/widgets/screen_title.dart';

class LevelsScreen extends StatefulWidget {
  static const String routeName = 'levelsScreen';

  @override
  State<LevelsScreen> createState() => _LevelsScreenState();
}

class _LevelsScreenState extends State<LevelsScreen> {
  TextEditingController _levelController = TextEditingController();

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
            ScreenTitle('الصفوف الدراسية'),
            SizedBox(height: 10),
            Expanded(
              child: ListView.separated(
                itemCount: DemoLists.levels.length,
                separatorBuilder: (context, index) => SizedBox(height: 4),
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.bubble_chart,
                                size: 20,
                                color: Theme.of(context).primaryColor,
                              ),
                              SizedBox(width: 10),
                              Text(
                                DemoLists.levels[index],
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.edit,
                                    color: Colors.grey[600],
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.close,
                                    color: Colors.redAccent[100],
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.pushNamed(context, AddLevelScreen.routeName);
          showModelSheet();
        },
        child: Icon(Icons.add),
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
                  'إضافة صف دراسي جديد',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 10),
                CustomTextField(
                  controller: _levelController,
                  validator: (value) {},
                  hint: 'اكتب اسم الصف',
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
