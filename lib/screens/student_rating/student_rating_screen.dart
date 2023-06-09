import 'package:flutter/material.dart';
import 'package:prime_academy/model/demo_lists.dart';
import 'package:prime_academy/screens/payment/component/month_card.dart';
import 'package:prime_academy/shared/widgets/custom_text_field.dart';
import 'package:prime_academy/shared/widgets/level_card.dart';
import 'package:prime_academy/shared/widgets/linear_percentage_indicator.dart';
import 'package:prime_academy/shared/widgets/main_button.dart';
import 'package:prime_academy/shared/widgets/screen_title.dart';

class StudentsRatingScreen extends StatefulWidget {
  static const String routeName = 'studentsRatingScreen';

  @override
  State<StudentsRatingScreen> createState() => _StudentsRatingScreenState();
}

class _StudentsRatingScreenState extends State<StudentsRatingScreen> {
  int selectedLevel = 0;

  int selectedSubject = 0;
  int selectedMonth = DateTime.now().month;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ScreenTitle('تقييم الطلبة'),
            const SizedBox(height: 10),
            SizedBox(
              height: 40,
              child: ListView.separated(
                  itemCount: DemoLists.levels.length,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 10),
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
            const SizedBox(height: 10),
            SizedBox(
              height: 40,
              child: ListView.separated(
                  itemCount: DemoLists.subjects.length,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 10),
                  itemBuilder: (context, index) {
                    return Center(
                      child: LevelCard(
                        levelName: DemoLists.subjects[index],
                        bgColor: Colors.redAccent[100],
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
            const SizedBox(height: 10),
            SizedBox(
              height: 70,
              child: ListView.separated(
                  itemCount: DemoLists.monthsShortcuts.length,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 10),
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
            const SizedBox(height: 10),
            const Divider(thickness: 1),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.separated(
                  padding: const EdgeInsets.only(bottom: 30),
                  itemCount: 20,
                  separatorBuilder: (contex, index) {
                    return const SizedBox(height: 5);
                  },
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 12),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const CircleAvatar(
                                  radius: 16,
                                  backgroundImage:
                                      AssetImage('assets/images/student.jpg'),
                                ),
                                const SizedBox(width: 10),
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
                            const SizedBox(height: 10),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      label('الحضور'),
                                      SizedBox(height: 10),
                                      label(
                                        'الواجبات',
                                      ),
                                      SizedBox(height: 10),
                                      label('المشاركة'),
                                      SizedBox(height: 10),
                                      label('السلوك'),
                                      SizedBox(height: 10),
                                      label('تقييم عام'),
                                    ],
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    children: [
                                      PercentageIndicator(
                                          percentage: .91,
                                          progressColor: Color(0xffFFC107)),
                                      const SizedBox(height: 10),
                                      PercentageIndicator(
                                          percentage: .87,
                                          progressColor: Color(0xff8BC34A)),
                                      const SizedBox(height: 10),
                                      PercentageIndicator(
                                          percentage: .825,
                                          progressColor: Color(0xff03A9F4)),
                                      const SizedBox(height: 10),
                                      PercentageIndicator(
                                          percentage: .90,
                                          progressColor: Color(0xffF06292)),
                                      const SizedBox(height: 10),
                                      PercentageIndicator(
                                          percentage: .95,
                                          progressColor: Color(0xffFF5722)),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 12),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: ElevatedButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          double behavior = 50;
                                          double attendance = 50;

                                          double homeWork = 50;
                                          double general = 50;
                                          TextEditingController _notes =
                                              TextEditingController();

                                          return StatefulBuilder(
                                              builder: (context, setState) {
                                            return AlertDialog(
                                              title: const Text("التقييم"),
                                              content: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    ratingSection(
                                                      sectionTitle: 'السلوك',
                                                      rating: behavior,
                                                      plusPress: () => setState(
                                                          () => behavior++),
                                                      minusPress: () =>
                                                          setState(
                                                              () => behavior--),
                                                      sliderOnChange:
                                                          (newRating) => setState(
                                                              () => behavior =
                                                                  newRating
                                                                      .toInt()
                                                                      .toDouble()),
                                                    ),
                                                    const Divider(
                                                      thickness: 1,
                                                    ),
                                                    ratingSection(
                                                      sectionTitle: 'الحضور',
                                                      rating: attendance,
                                                      plusPress: () => setState(
                                                          () => attendance++),
                                                      minusPress: () =>
                                                          setState(() =>
                                                              attendance--),
                                                      sliderOnChange:
                                                          (newRating) => setState(
                                                              () => attendance =
                                                                  newRating
                                                                      .toInt()
                                                                      .toDouble()),
                                                    ),
                                                    const Divider(),
                                                    ratingSection(
                                                      sectionTitle: 'الواجبات',
                                                      rating: homeWork,
                                                      plusPress: () => setState(
                                                          () => homeWork++),
                                                      minusPress: () =>
                                                          setState(
                                                              () => homeWork--),
                                                      sliderOnChange:
                                                          (newRating) => setState(
                                                              () => homeWork =
                                                                  newRating
                                                                      .toInt()
                                                                      .toDouble()),
                                                    ),
                                                    const Divider(),
                                                    ratingSection(
                                                      sectionTitle: 'تقييم عام',
                                                      rating: general,
                                                      plusPress: () => setState(
                                                          () => general++),
                                                      minusPress: () =>
                                                          setState(
                                                              () => general--),
                                                      sliderOnChange: (newRating) =>
                                                          setState(() =>
                                                              general = newRating
                                                                  .toInt()
                                                                  .toDouble()),
                                                    ),
                                                    const Text('ملاحظات'),
                                                    CustomTextField(
                                                        controller: _notes,
                                                        validator: (v) {}),
                                                    const SizedBox(height: 20),
                                                    SizedBox(
                                                      width: double.infinity,
                                                      child: MainButton(
                                                        onTap: () {},
                                                        text: 'حفظ التقييم',
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            );
                                          });
                                        });
                                  },
                                  child: const Text('تقييم')),
                            ),
                            const SizedBox(height: 4),
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

  Widget ratingSection({
    required Function() plusPress,
    required Function() minusPress,
    required Function(double newRating) sliderOnChange,
    required String sectionTitle,
    required double rating,
  }) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              sectionTitle,
              style: const TextStyle(height: 1),
            ),
            TextButton(onPressed: minusPress, child: const Icon(Icons.remove)),
            Text(
              '$rating',
              style: const TextStyle(height: 1),
            ),
            TextButton(onPressed: plusPress, child: const Icon(Icons.add)),
          ],
        ),
        Slider(
          value: rating,
          activeColor: Colors.orange,
          inactiveColor: Colors.orange[100],
          min: 0,
          max: 100,
          //divisions: 4,
          onChanged: sliderOnChange,
        )
      ],
    );
  }

  Widget label(String label) {
    return Text(label,
        style: TextStyle(fontSize: 16, color: Colors.grey[900], height: 1.1));
  }
}
