import 'package:flutter/material.dart';
import 'package:prime_academy/model/demo_lists.dart';
import 'package:prime_academy/shared/widgets/level_card.dart';
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
            ScreenTitle('Student Level Upgrade'),
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
                                Icon(
                                  Icons.person,
                                  size: 20,
                                  color: Theme.of(context).primaryColor,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Hassan Gamal',
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(height: 6),
                            Row(
                              children: [
                                Text('Degree',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black54)),
                                SizedBox(width: 10),
                                Text('270',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black54)),
                              ],
                            ),
                            SizedBox(height: 6),
                            Row(
                              children: [
                                Text('Percentage',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black54)),
                                SizedBox(width: 10),
                                Text('97 %',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black54)),
                              ],
                            ),
                            SizedBox(height: 6),
                            Row(
                              children: [
                                Text('Attendance',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black54)),
                                SizedBox(width: 10),
                                Text('90 %',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black54)),
                              ],
                            ),
                            SizedBox(height: 6),
                            Row(
                              children: [
                                Text('Behavior',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black54)),
                                SizedBox(width: 10),
                                Text('99 %',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black54)),
                              ],
                            ),
                            SizedBox(height: 6),
                            Divider(thickness: 1),
                            SizedBox(height: 6),
                            Row(
                              children: [
                                Text('Total Rate',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black54)),
                                SizedBox(width: 10),
                                Text('95 %',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black54)),
                              ],
                            ),
                            // SizedBox(height: 12),
                            Align(
                              alignment: Alignment.centerRight,
                              child: ElevatedButton(
                                  onPressed: () {}, child: Text('Upgrade')),
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
