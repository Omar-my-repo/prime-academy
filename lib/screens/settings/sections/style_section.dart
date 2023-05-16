import 'package:flutter/material.dart';
import 'package:prime_academy/shared/widgets/custom_list_tile.dart';

class StyleSection extends StatelessWidget {
  const StyleSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //var themeProvider = Provider.of<ThemeProvider>(context);
    //print('===========================${themeProvider.mode}');
    return InkWell(
      // onTap: () {
      //   showModalBottomSheet(
      //       context: context,
      //       builder: (context) {
      //         return SizedBox(
      //           height: 200,
      //           child: Padding(
      //             padding:
      //                 const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      //             child: Column(
      //               // mainAxisAlignment: MainAxisAlignment.center,
      //               children: [
      //                 Container(
      //                   width: 100,
      //                   height: 3,
      //                   color: Colors.grey,
      //                 ),
      //                 const SizedBox(height: 20),
      //                 InkWell(
      //                   onTap: () {
      //                     // if (themeProvider.mode == MyThemeData.darkMode) {
      //                     themeProvider.changeThemeMode(MyThemeData.lightMode);
      //                     // }
      //                   },
      //                   child: themeProvider.mode == MyThemeData.lightMode
      //                       ? selectTheme(
      //                           AppLocalizations.of(context)!.light_mode)
      //                       : unSelectTheme(
      //                           AppLocalizations.of(context)!.light_mode),
      //                 ),
      //                 const SizedBox(height: 20),
      //                 InkWell(
      //                   onTap: () {
      //                     //if (themeProvider.mode == MyThemeData.lightMode) {
      //                     themeProvider.changeThemeMode(MyThemeData.darkMode);
      //                     //}
      //                   },
      //                   child: themeProvider.mode == MyThemeData.darkMode
      //                       ? selectTheme(
      //                           AppLocalizations.of(context)!.dark_mode)
      //                       : unSelectTheme(
      //                           AppLocalizations.of(context)!.dark_mode),
      //                 ),
      //               ],
      //             ),
      //           ),
      //         );
      //       });
      // },
      child: CustomListTile(
        title: 'Style',
        leading: Icon(Icons.style),
      ),
    );
  }

  Widget selectTheme(String style) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          style,
          style: TextStyle(fontSize: 18),
        ),
        const Icon(
          Icons.check,
          color: Colors.orangeAccent,
          size: 26,
        )
      ],
    );
  }

  Widget unSelectTheme(String style) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        style,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
