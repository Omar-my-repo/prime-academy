import 'package:flutter/material.dart';

class LevelCard extends StatelessWidget {
  bool isSelected;
  String levelName;
  Color? bgColor;
  Function() onTab;

  LevelCard(
      {required this.isSelected,
      required this.levelName,
      required this.onTab,
      this.bgColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: isSelected
                ? bgColor != null
                    ? bgColor
                    : Colors.blue.withOpacity(.7)
                : null,
            border: Border.all(
                width: isSelected ? 0.0 : 0,
                color: isSelected ? Colors.grey[200]! : Colors.blueGrey)),
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
