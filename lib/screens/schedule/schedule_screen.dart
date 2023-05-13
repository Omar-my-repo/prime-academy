import 'package:flutter/material.dart';
import 'package:prime_academy/model/demo_lists.dart';
import 'package:prime_academy/screens/payment/component/level_card.dart';
import 'package:prime_academy/shared/widgets/full_screen_img.dart';
import 'package:prime_academy/shared/widgets/screen_title.dart';

class ScheduleScreen extends StatefulWidget {
  static const String routeName = 'ScheduleScreen';

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  int selectedLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            ScreenTitle('Schedule'),
            SizedBox(height: 10),
            SizedBox(
              height: 40,
              child: ListView.separated(
                  itemCount: DemoLists.levels.length,
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
            Expanded(
              child: ListView.separated(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  itemCount: DemoLists.schedules.length,
                  separatorBuilder: (contex, index) => SizedBox(height: 10),
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FullScreenImage(
                                          imgUrl:
                                              DemoLists.schedules[index].imgUrl,
                                        ))),
                            child: SizedBox(
                              height: 200,
                              width: double.infinity,
                              child: Image.asset(
                                DemoLists.schedules[index].imgUrl,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  DemoLists.schedules[index].date,
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(height: 4),
                                Text(DemoLists.schedules[index].notes,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          SizedBox(height: 12),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
