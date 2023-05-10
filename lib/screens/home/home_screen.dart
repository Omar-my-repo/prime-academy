import 'package:flutter/material.dart';
import 'package:prime_academy/model/demo_lists.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'homeScreen';

  List<String> screens = DemoLists.screens;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 20,
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/prime_logo.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          // SizedBox(height: 20),
          Expanded(
            child: GridView.builder(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                itemCount: DemoLists.homeContent.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
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
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(DemoLists.icons[index]),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 2.0),
                            child: Text(
                              DemoLists.homeContent[index],
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
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
  }
}
