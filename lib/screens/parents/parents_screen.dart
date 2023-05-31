import 'package:flutter/material.dart';
import 'package:prime_academy/screens/parent_profile/parent_profile_screen.dart';
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
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            ScreenTitle('أولياء الامور'),
            SizedBox(height: 10),
            Expanded(
              child: ListView.separated(
                  padding: EdgeInsets.only(top: 10, bottom: 80),
                  itemCount: 20,
                  separatorBuilder: (contex, index) {
                    return SizedBox(height: 4);
                  },
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
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
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, ParentProfileScreen.routeName);
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(8),
                                    margin: EdgeInsets.symmetric(horizontal: 8),
                                    decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        shape: BoxShape.circle),
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.grey[500],
                                      size: 20,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 6),
                            Row(
                              children: [
                                Icon(
                                  Icons.phone_android,
                                  size: 20,
                                  color: Colors.grey,
                                ),
                                SizedBox(width: 10),
                                Text('01123456789',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black54)),
                              ],
                            ),
                            SizedBox(height: 12),
                          ],
                        ),
                      ),
                    );

                    // return Card(
                    //   elevation: 2,
                    //   child: Padding(
                    //     padding: const EdgeInsets.only(left: 16.0),
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //       children: [
                    //         Column(
                    //           mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //           crossAxisAlignment: CrossAxisAlignment.start,
                    //           children: [
                    //             SizedBox(height: 12),
                    //             Row(
                    //               children: [
                    //                 Icon(
                    //                   Icons.person,
                    //                   size: 20,
                    //                   color: Theme.of(context).primaryColor,
                    //                 ),
                    //                 SizedBox(width: 10),
                    //                 Text(
                    //                   'Hassan Gamal',
                    //                   style: TextStyle(
                    //                       color: Theme.of(context).primaryColor,
                    //                       fontSize: 18,
                    //                       fontWeight: FontWeight.w500),
                    //                 ),
                    //               ],
                    //             ),
                    //             SizedBox(height: 6),
                    //             Row(
                    //               children: [
                    //                 Icon(Icons.phone_android,
                    //                     size: 20, color: Colors.grey),
                    //                 SizedBox(width: 10),
                    //                 Text('01123456789',
                    //                     style: TextStyle(
                    //                         fontSize: 16,
                    //                         color: Colors.black54)),
                    //               ],
                    //             ),
                    //             // SizedBox(height: 6),
                    //             // Row(
                    //             //   children: [
                    //             //     Icon(Icons.contact_mail_rounded,size: 20,color:Theme.of(context).primaryColor),
                    //             //     SizedBox(width: 10),
                    //             //     Text('Level  KG1',style: TextStyle(fontSize: 16,color: Colors.black54)),
                    //             //   ],
                    //             // ),
                    //             SizedBox(height: 12),
                    //           ],
                    //         ),
                    //         IconButton(
                    //             onPressed: () {},
                    //             icon: Icon(
                    //               Icons.edit,
                    //               color: Theme.of(context).primaryColor,
                    //             ))
                    //       ],
                    //     ),
                    //   ),
                    // );
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
