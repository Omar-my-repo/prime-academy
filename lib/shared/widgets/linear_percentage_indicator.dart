import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PercentageIndicator extends StatelessWidget {
  double percentage;
  Color? progressColor;

  PercentageIndicator({required this.percentage, this.progressColor});

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      width: 200,
      animation: true,
      lineHeight: 20.0,
      animationDuration: 2000,
      percent: percentage,
      center: Text("${percentage * 100}%"),
      barRadius: Radius.circular(8),
      progressColor: progressColor ?? Colors.greenAccent,
    );
  }
}
