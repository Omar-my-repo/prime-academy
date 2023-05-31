import 'package:flutter/material.dart';
import 'package:prime_academy/model/demo_lists.dart';
import 'package:prime_academy/shared/widgets/level_card.dart';
import 'package:prime_academy/shared/widgets/linear_percentage_indicator.dart';
import 'package:prime_academy/shared/widgets/screen_title.dart';

class LevelUpgradeScreen extends StatefulWidget {
  static const String routeName = 'levelUpgradeScreen';

  @override
  State<LevelUpgradeScreen> createState() => _LevelUpgradeScreenState();
}

class _LevelUpgradeScreenState extends State<LevelUpgradeScreen> {
  int selectedLevel = 0;

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
            ScreenTitle('نقل الطلبة'),
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
            SizedBox(height: 10),
            Expanded(
              child: ListView.separated(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  itemCount: 20,
                  separatorBuilder: (contex, index) =>
                      const SizedBox(height: 10),
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 12),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 16,
                                  backgroundImage:
                                      AssetImage('assets/images/student.jpg'),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Hassan Gamal',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6),
                            SizedBox(height: 6),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text('الدرجة: ',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black54)),
                                    SizedBox(width: 10),
                                    Text('النسبة المؤية ',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black54)),
                                    SizedBox(height: 10),
                                    Text('نسبة الحضور',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black54)),
                                    SizedBox(height: 10),
                                    Text('السلوك ',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black54)),
                                  ],
                                ),
                                SizedBox(width: 5),
                                Column(
                                  children: [
                                    Text('270 / 280',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(height: 10),
                                    PercentageIndicator(percentage: .97),
                                    SizedBox(height: 10),
                                    PercentageIndicator(percentage: .94),
                                    SizedBox(height: 10),
                                    PercentageIndicator(percentage: .925),
                                  ],
                                )
                              ],
                            ),
                            Divider(thickness: 1, height: 10),
                            Row(
                              children: [
                                Text('التقييم الكلي: ',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black54)),
                                SizedBox(width: 10),
                                PercentageIndicator(
                                    percentage: .935,
                                    progressColor: Colors.lightGreen),
                              ],
                            ),
                            SizedBox(height: 12),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: ElevatedButton(
                                  onPressed: () {}, child: Text('نقل الطالب')),
                            ),
                            SizedBox(height: 4),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
