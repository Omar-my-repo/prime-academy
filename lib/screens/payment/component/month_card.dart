import 'package:flutter/material.dart';

class MonthCard extends StatelessWidget {
  String monthName;
  int monthNumber;
  bool isSelected;
  Function() onTap;

  MonthCard(
      {required this.monthNumber,
      required this.monthName,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            width: 60,
            // height: 60,
            padding: EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
                color: Colors.redAccent[100],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
                border: Border.all(
                  width: isSelected ? 3 : 0,
                  color: isSelected ? Colors.deepPurpleAccent : Color(0xff0978c0),
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '$monthNumber',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  monthName,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Positioned(
              top: 5,
              right: 5,
              child: Container(
                height: 5,
                width: 5,
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              )),
        ],
      ),
    );
  }
}
