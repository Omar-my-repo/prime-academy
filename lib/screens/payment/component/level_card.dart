import 'package:flutter/material.dart';

class LevelCard extends StatelessWidget {
  bool isSelected;
  String levelName;
  Function() onTab;

  LevelCard(
      {required this.isSelected, required this.levelName, required this.onTab});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: isSelected ? Colors.grey.withBlue(255) : null,
            border: Border.all(
                width: isSelected ? 2 : 1,
                color: isSelected ? Colors.deepPurpleAccent : Colors.blueGrey)),
        child: Text(
          levelName,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.white : Colors.blueGrey),
        ),
      ),
    );
  }
}
