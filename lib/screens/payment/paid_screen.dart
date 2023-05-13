import 'package:flutter/material.dart';
import 'package:prime_academy/model/demo_lists.dart';
import 'package:prime_academy/screens/payment/component/month_card.dart';
import 'package:prime_academy/shared/widgets/level_card.dart';

class PaidScreen extends StatefulWidget {
  const PaidScreen({Key? key}) : super(key: key);

  @override
  State<PaidScreen> createState() => _PaidScreenState();
}

int selectedMonth = DateTime.now().month;
int selectedLevel = 2;

class _PaidScreenState extends State<PaidScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          SizedBox(
            height: 70,
            child: ListView.separated(
                itemCount: DemoLists.monthsShortcuts.length,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(width: 10),
                itemBuilder: (context, index) {
                  return Center(
                    child: MonthCard(
                      monthNumber: index + 1,
                      isSelected: selectedMonth == index + 1,
                      monthName: DemoLists.monthsShortcuts[index],
                      onTap: () {
                        setState(() {
                          selectedMonth = index + 1;
                        });
                      },
                    ),
                  );
                }),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.separated(
              // shrinkWrap: true,
              itemCount: 30,
              // physics: NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => SizedBox(height: 10),
              itemBuilder: (context, index) {
                return Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
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
                                  'Omar Muhammad',
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
                                Icon(Icons.phone_android,
                                    size: 20, color: Colors.grey),
                                SizedBox(width: 10),
                                Text('01123456789',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black54)),
                              ],
                            ),
                            SizedBox(height: 6),
                            Row(
                              children: [
                                Icon(Icons.contact_mail_rounded,
                                    size: 20, color: Colors.grey),
                                SizedBox(width: 10),
                                Text('Level KG1',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black54)),
                              ],
                            ),
                            SizedBox(height: 12),
                          ],
                        ),

                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
