import 'package:flutter/material.dart';
import 'package:prime_academy/shared/style/colors.dart';

class ProfileCard extends StatelessWidget {
  String cardTitle;
  String cardContent;
  Function()? onTapEdit;

  ProfileCard(
      {required this.cardTitle, required this.cardContent, this.onTapEdit});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  cardTitle,
                  style: TextStyle(color: Colors.black54),
                ),
                // IconButton(onPressed: (){}, icon: Icon(Icons.edit,size: 18,color: MyColors.homeBgColor,)),
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.edit,
                    color: MyColors.homeBgColor.withOpacity(.5),
                    size: 20,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 2,
            ),
            Text(cardContent, style: TextStyle(fontSize: 18, height: 1)),
            SizedBox(
              height: 2,
            ),
          ],
        ),
      ),
    );
  }
}
