import 'package:flutter/material.dart';
import 'package:prime_academy/shared/widgets/custom_list_tile.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        // onTap: () {
        //   showModalBottomSheet(
        //       context: context,
        //       builder: (context) {
        //         return const SizedBox(
        //           height: 800,
        //         );
        //       });
        // },
        child: CustomListTile(
      title: 'عن التطبيق',
      leading: Icon(Icons.info),
    ));
  }
}
