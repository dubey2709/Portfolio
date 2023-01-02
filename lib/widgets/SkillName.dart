import 'package:flutter/material.dart';

import '../utilities/constants.dart';

class skillName extends StatelessWidget {
  skillName(this.width, this.name, this.image);
  final String name;
  final String image;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0.006 * width),
      child: Center(
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  image,
                  height: 0.039 * width,
                  width: 0.039 * width,
                ),
                SizedBox(height: 0.009 * width),
                Text(
                  name,
                  textScaleFactor: 1,
                  style: style2.copyWith(fontSize: 0.016 * width),
                )
              ],
            ),
            SizedBox(width: 0.019 * width),
          ],
        ),
      ),
    );
  }
}
