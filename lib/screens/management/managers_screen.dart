import 'package:flutter/material.dart';
import 'package:prime_academy/screens/management/add_employee_screen.dart';
import 'package:prime_academy/shared/widgets/screen_title.dart';

class ManagersScreen extends StatelessWidget {
  static const String routeName = 'managersScren';

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
            ScreenTitle('المستخدمين'),
            Expanded(
              child: ListView.separated(
                  padding: EdgeInsets.only(top: 10, bottom: 80),
                  itemCount: 20,
                  separatorBuilder: (contex, index) {
                    return SizedBox(height: 4);
                  },
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 26,
                              backgroundColor: Colors.blue,
                              child: CircleAvatar(
                                radius: 24,
                                backgroundColor: Colors.blueAccent,
                                backgroundImage:
                                    AssetImage('assets/images/person.png'),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 12),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Hassan Gamal',
                                        style: TextStyle(
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      InkWell(
                                        child: Container(
                                          padding: EdgeInsets.all(8),
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 8),
                                          decoration: BoxDecoration(
                                              color: Colors.grey[200],
                                              shape: BoxShape.circle),
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                            color: Colors.grey[500],
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 6),
                                  Text('01123456789',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black54)),
                                  SizedBox(height: 6),
                                  Text('مدخل بيانات',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black54,
                                          height: 1)),
                                  SizedBox(height: 12),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AddEmployeeScreen.routeName);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
