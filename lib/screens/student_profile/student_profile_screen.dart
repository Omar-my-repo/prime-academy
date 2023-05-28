import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:prime_academy/shared/style/colors.dart';

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
                  Text('Omar Muhammad',
                      style: TextStyle(fontSize: 19, color: Colors.white))
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
                            child: profileSection('اسم المستخدم', 'omm8233')),
                        Expanded(
                            child: profileSection('الرقم السري', '12345678')),
                      ],
                    ),

                    SizedBox(
                        width: double.infinity,
                        child: profileSection('العنوان', '4 elharam st- giza')),
                    SizedBox(
                        width: double.infinity,
                        child: profileSection(
                            'البريد الالكتروني', 'email@gmail.com')),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: profileSection(
                                'اسم ولي الامر', 'عمر محمد علي')),
                        Expanded(
                            child: profileSection('رقم الهاتف', '01234567891')),
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
                            SizedBox(height: 2),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('الحضور', style: TextStyle(fontSize: 18)),
                                SizedBox(),
                                linearPercentageIndicator(percentage: .9),
                                SizedBox(),
                              ],
                            ),
                            SizedBox(height: 2),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('الواجبات',
                                    style: TextStyle(fontSize: 18)),
                                SizedBox(),
                                linearPercentageIndicator(percentage: .7),
                                SizedBox(),
                              ],
                            ),
                            SizedBox(height: 2),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('المشاركة',
                                    style: TextStyle(fontSize: 18)),
                                SizedBox(),
                                linearPercentageIndicator(percentage: 1),
                                SizedBox(),
                              ],
                            ),
                            SizedBox(height: 2),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('تقييم عام',
                                    style: TextStyle(fontSize: 18)),
                                SizedBox(),
                                linearPercentageIndicator(percentage: .85),
                                SizedBox(),
                              ],
                            ),
                            SizedBox(height: 2),
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

  Widget linearPercentageIndicator(
      {required double percentage, Color? progressColor}) {
    return LinearPercentIndicator(
      width: 200,
      animation: true,
      lineHeight: 20.0,
      animationDuration: 2000,
      percent: percentage,
      center: Text("${percentage * 100}%"),
      barRadius: Radius.circular(8),
      progressColor: progressColor ?? Colors.greenAccent,
    );
  }

  Widget profileSection(String title, String content) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
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
            SizedBox(
              height: 2,
            ),
            Text(content, style: TextStyle(fontSize: 18, height: 1)),
            SizedBox(
              height: 2,
            ),
          ],
        ),
      ),
    );
  }
}
