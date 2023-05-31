import 'package:flutter/material.dart';
import 'package:prime_academy/model/screen.dart';
import 'package:prime_academy/shared/style/colors.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'homeScreen';

  List<Screen> allScreens = Screen.allScreens;

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (contex, orientation) {
        return Scaffold(
          // appBar: AppBar(
          //   backgroundColor: Theme.of(context).primaryColor,
          //   actions: [
          //     Card(
          //       child: IconButton(
          //           onPressed: () {},
          //           icon: Icon(
          //             Icons.settings,
          //             color: Colors.black,
          //           )),
          //     )
          //   ],
          // ),
          body: Column(
            children: [
              Visibility(
                visible: orientation == Orientation.portrait,
                child: Container(
                  height: 270,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 220,
                        decoration: BoxDecoration(
                          color: MyColors.homeBgColor,
                          // color: Colors.lightBlue.withOpacity(.3),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 60,
                            right: 20,
                            left: 20,
                          ),
                          child: Text(
                            'مرحباً بكم\nمعاَ نصنع مستقبل أفضل',
                            style: TextStyle(
                                fontSize: 26,
                                // fontWeight: FontWeight.bold,
                                height: 1,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 1,
                          child: Center(
                            child: Card(
                              elevation: 2,
                              clipBehavior: Clip.hardEdge,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              child: Container(
                                height: 120,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                width: MediaQuery.of(context).size.width * .9,
                                decoration: BoxDecoration(
                                    // color: Color(0xffd1ecea),
                                    // color: Color(0xfffff4de),
                                    color: Colors.orange.withOpacity(.1),
                                    borderRadius: BorderRadius.circular(30)
                                    // image: DecorationImage(
                                  //   image: AssetImage('assets/images/prime_logo.jpg'),
                                  //   fit: BoxFit.fill,
                                  // ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                      children: [
                                        CircleAvatar(
                                          backgroundImage: AssetImage(
                                              'assets/images/prime_logo.jpg'),
                                          radius: 40,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              'Prime Academy',
                                              style: TextStyle(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.bold,
                                                  color: Theme.of(context)
                                                      .primaryColor),
                                            ),
                                            Text(
                                              'مستر محمد الدهبي',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black54),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                // child: Container(
                //   height: 170,
                //   width: double.infinity,
                //   decoration: BoxDecoration(
                //     image: DecorationImage(
                //       image: AssetImage('assets/images/prime_logo.jpg'),
                //       fit: BoxFit.fill,
                //     ),
                //   ),
                // ),
              ),

              // SizedBox(height: 20),
              SizedBox(height: 10),
              Expanded(
                child: GridView.builder(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    itemCount: allScreens.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:
                          orientation == Orientation.portrait ? 3 : 5,
                      childAspectRatio: .90,
                      crossAxisSpacing: 4,
                      mainAxisSpacing: 4,
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          // Navigator.pushNamed(context, screens[index]);
                          Navigator.of(context, rootNavigator: true)
                              .pushNamed(allScreens[index].route);
                        },
                        child: Card(
                          elevation: 2,
                          // margin: EdgeInsets.symmetric(horizontal: 2),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, right: 30, left: 30),
                                child: Image.asset(allScreens[index].iconAsset),
                              ),
                              // SizedBox(height: 10),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 2.0),
                                child: Text(
                                  allScreens[index].title,
                                  style: TextStyle(
                                      fontSize: 17,
                                      height: 1.3,
                                      fontWeight: FontWeight.w500),
                                  textAlign: TextAlign.center,
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
        );
      },
    );
  }
}
