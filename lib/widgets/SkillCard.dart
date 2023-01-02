import 'package:flutter/material.dart';
import 'package:my_portfolio/utilities/constants.dart';

class Skill extends StatelessWidget {
  Skill(this.skill, this.width);
  final String skill;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.023 * width,
      width: 0.075 * width,
      padding: EdgeInsets.all(0.002 * width),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(0.015 * width),
      ),
      child: Center(
        child: Text(
          skill,
          style: style2.copyWith(fontSize: 0.010 * width),
        ),
      ),
    );
  }
}
