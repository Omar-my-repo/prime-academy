import 'package:flutter/material.dart';
import 'package:prime_academy/screens/student_profile/student_profile_screen.dart';
import 'package:prime_academy/shared/style/colors.dart';
import 'package:prime_academy/shared/widgets/profile_card.dart';

class ParentProfileScreen extends StatefulWidget {
  static const String routeName = 'parentProfile';

  @override
  State<ParentProfileScreen> createState() => _ParentProfileScreenState();
}

class _ParentProfileScreenState extends State<ParentProfileScreen> {
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
                      backgroundImage: AssetImage('assets/images/person.png'),
                      backgroundColor: Colors.grey[100],
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
                  crossAxisAlignment: CrossAxisAlignment.stretch,
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

                    // SizedBox(width:double.infinity,child: profileSection('التقييم','السلوك\nالتقييم\n')),
                    SizedBox(height: 5),
                    //
                    // Divider(thickness: 3),
                    SizedBox(height: 5),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'الابناء',
                              style: TextStyle(color: Colors.black54),
                            ),
                            ListTile(
                              title: Text('Ahmed Ibrahiem'),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: MyColors.homeBgColor.withOpacity(.5),
                              ),
                              onTap: () {
                                Navigator.pushNamed(
                                    context, StudentProfileScreen.routeName);
                              },
                            ),
                            Divider(
                              thickness: 1,
                            ),
                            ListTile(
                              title: Text('Mahmoud Ibrahiem'),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: MyColors.homeBgColor.withOpacity(.5),
                              ),
                              onTap: () {
                                Navigator.pushNamed(
                                    context, StudentProfileScreen.routeName);
                              },
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
}
