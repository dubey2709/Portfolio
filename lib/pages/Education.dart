import 'package:flutter/material.dart';
import 'package:my_portfolio/utilities/constants.dart';

import '../widgets/Timeline_tile.dart';

class Education extends StatefulWidget {
  @override
  _EducationState createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var width =
        screenSize.width < 900 ? screenSize.width * 2 : screenSize.width;
    return Container(
      padding: EdgeInsets.fromLTRB(
          screenSize.width < 900 ? 0.02 * width : 0.097 * width, 12, 12, 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Education',
            style: style1.copyWith(fontSize: 0.021 * width),
          ),
          SizedBox(height: 0.007 * width),
          Timeline_tile(
              width,
              'Indian Institute of Information Technology, Bhopal\n\nB. Tech. | Computer Science | 2025',
              true,
              false),
          Timeline_tile(
              width,
              'Kendriya Vidyalaya No. 1 AFS Adampur, Jalandhar\n\nIntermediate (XII) | Science | 95.4% | 2021',
              false,
              false),
          Timeline_tile(
              width,
              'Kendriya Vidyalaya No. 1 AFS Adampur, Jalandhar\n\nMatriculate (X) | 95.6% | 2019',
              false,
              true)
        ],
      ),
    );
  }
}
