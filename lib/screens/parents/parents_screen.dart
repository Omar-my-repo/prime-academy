import 'package:flutter/material.dart';
import 'package:prime_academy/screens/parents/add_parent_screen.dart';
import 'package:prime_academy/shared/widgets/screen_title.dart';

class ParentsScreen extends StatefulWidget {
  const ParentsScreen({Key? key}) : super(key: key);
  static const String routeName = 'parentsScreen';

  @override
  State<ParentsScreen> createState() => _ParentsScreenState();
}

class _ParentsScreenState extends State<ParentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            ScreenTitle('Parents'),
            SizedBox(height: 10),
            Expanded(
              child: ListView.separated(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  itemCount: 20,
                  separatorBuilder: (contex, index) {
                    return SizedBox(height: 10);
                  },
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
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
                                    Icon(Icons.phone_android,
                                        size: 20, color: Colors.grey),
                                    SizedBox(width: 10),
                                    Text('01123456789',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black54)),
                                  ],
                                ),
                                // SizedBox(height: 6),
                                // Row(
                                //   children: [
                                //     Icon(Icons.contact_mail_rounded,size: 20,color:Theme.of(context).primaryColor),
                                //     SizedBox(width: 10),
                                //     Text('Level  KG1',style: TextStyle(fontSize: 16,color: Colors.black54)),
                                //   ],
                                // ),
                                SizedBox(height: 12),
                              ],
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.edit,
                                  color: Theme.of(context).primaryColor,
                                ))
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
          Navigator.pushNamed(context, AddParentScreen.routeName);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
