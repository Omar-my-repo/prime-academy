import 'package:flutter/material.dart';
import 'package:prime_academy/model/demo_lists.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'homeScreen';

  List<String> screens = DemoLists.screens;

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (contex, orientation) {
        return Scaffold(
          appBar: AppBar(
            // toolbarHeight: 20,
            backgroundColor: Theme.of(context).primaryColor,
            elevation: 0,
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
          ),
          body: Column(
            children: [
              Visibility(
                visible: orientation == Orientation.portrait,
                child: Container(
                  height: 170,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/prime_logo.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),

              // SizedBox(height: 20),
              Expanded(
                child: GridView.builder(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    itemCount: DemoLists.homeContent.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:
                          orientation == Orientation.portrait ? 3 : 5,
                      childAspectRatio: .8,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, screens[index]);
                        },
                        child: Card(
                          elevation: 6,
                          // margin: EdgeInsets.symmetric(horizontal: 2),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, right: 20, left: 20),
                                child: Image.asset(DemoLists.icons[index]),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 2.0),
                                child: Text(
                                  DemoLists.homeContent[index],
                                  style: TextStyle(
                                      fontSize: 15,
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
