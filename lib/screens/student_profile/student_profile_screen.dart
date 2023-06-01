import 'package:flutter/material.dart';
import 'package:prime_academy/shared/style/colors.dart';
import 'package:prime_academy/shared/widgets/linear_percentage_indicator.dart';
import 'package:prime_academy/shared/widgets/profile_card.dart';

class StudentProfileScreen extends StatelessWidget {
  static const String routeName = 'studentProfileScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        backgroundColor: MyColors.homeBgColor,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.chat))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///circle avatar
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: MyColors.homeBgColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  )),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 37,
                    backgroundColor: Colors.grey[100],
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/student.jpg'),
                      //backgroundColor: Colors.grey[100],
                      radius: 36,
                    ),
                  ),
                  SizedBox(width: 14),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Omar Muhammad',
                          style: TextStyle(fontSize: 19, color: Colors.white)),
                      SizedBox(height: 6),
                      Text('Level 1',
                          style:
                              TextStyle(fontSize: 16, color: Colors.white70)),
                    ],
                  )
                ],
              ),
            ),

            SizedBox(height: 20),

            ///
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: ProfileCard(
                                cardTitle: 'اسم المستخدم',
                                cardContent: 'omm8233')),
                        Expanded(
                            child: ProfileCard(
                                cardTitle: 'الرقم السري',
                                cardContent: '12345678')),
                      ],
                    ),

                    SizedBox(
                        width: double.infinity,
                        child: ProfileCard(
                            cardTitle: 'العنوان',
                            cardContent: '4 elharam st- giza')),
                    SizedBox(
                        width: double.infinity,
                        child: ProfileCard(
                            cardTitle: 'البريد الالكتروني',
                            cardContent: 'email@gmail.com')),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: ProfileCard(
                                cardTitle: 'اسم ولي الامر',
                                cardContent: 'عمر محمد علي')),
                        Expanded(
                            child: ProfileCard(
                                cardTitle: 'رقم الهاتف',
                                cardContent: '01234567891')),
                        // profileSection('رقم الهاتف','12345678910'),
                      ],
                    ),
                    // SizedBox(width:double.infinity,child: profileSection('التقييم','السلوك\nالتقييم\n')),

                    Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'التقييم',
                                  style: TextStyle(color: Colors.black54),
                                ),
                                // IconButton(onPressed: (){}, icon: Icon(Icons.edit,size: 18,color: MyColors.homeBgColor,)),
                                InkWell(
                                  onTap: () {},
                                  child: Icon(
                                    Icons.edit,
                                    color: MyColors.homeBgColor.withOpacity(.5),
                                    size: 20,
                                  ),
                                )
                              ],
                            ),
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
                                      PercentageIndicator(percentage: .91),
                                      const SizedBox(height: 10),
                                      PercentageIndicator(percentage: .87),
                                      const SizedBox(height: 10),
                                      PercentageIndicator(percentage: .825),
                                      const SizedBox(height: 10),
                                      PercentageIndicator(percentage: .95),
                                      const SizedBox(height: 10),
                                      PercentageIndicator(percentage: .90),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 50),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.redAccent,
        child: Icon(Icons.delete_forever),
      ),
    );
  }

  Widget label(String label) {
    return Text(label,
        style: TextStyle(fontSize: 16, color: Colors.grey[900], height: 1.1));
  }
}
