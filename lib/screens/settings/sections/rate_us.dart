import 'package:flutter/material.dart';
import 'package:prime_academy/shared/widgets/custom_list_tile.dart';

class RateUS extends StatelessWidget {
  const RateUS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: CustomListTile(title: 'Rate Us', leading: Icon(Icons.star)),
    );
  }
}
