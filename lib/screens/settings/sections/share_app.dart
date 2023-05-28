import 'package:flutter/material.dart';
import 'package:prime_academy/shared/widgets/custom_list_tile.dart';

class ShareApp extends StatelessWidget {
  const ShareApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child:
          CustomListTile(title: 'مشاركة التطبيق', leading: Icon(Icons.share)),
    );
  }
}
