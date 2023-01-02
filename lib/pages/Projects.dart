import 'package:flutter/material.dart';
import 'package:my_portfolio/models/Carousel.dart';
import '../utilities/constants.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var width =
        screenSize.width < 900 ? screenSize.width * 2 : screenSize.width;
    return Container(
      padding: EdgeInsets.fromLTRB(
          screenSize.width < 900 ? 0.02 * width : 0.097 * width,
          12,
          screenSize.width < 900 ? 0.02 * width : 0.097 * width,
          12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Projects 📱',
              textScaleFactor: 1,
              style: style1.copyWith(fontSize: 0.021 * width)),
          SizedBox(height: 0.010 * width),
          Text('Here are some of my projects on which I have worked',
              textScaleFactor: 1,
              style: style1.copyWith(
                  fontSize: 0.016 * width, color: Color(0xFF557588))),
          SizedBox(height: 0.014 * width),
          MainCarousel(width),
        ],
      ),
    );
  }
}
