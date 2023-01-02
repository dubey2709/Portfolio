import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import '../utilities/constants.dart';

class Timeline_tile extends StatelessWidget {
  Timeline_tile(this.width, this.degree, this.isFirst, this.isLast);

  final double width;
  final String degree;
  final bool isFirst;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      isFirst: isFirst,
      isLast: isLast,
      indicatorStyle: IndicatorStyle(color: Colors.white, width: 0.011 * width),
      beforeLineStyle: isLast || !(isLast && isFirst)
          ? LineStyle(color: Colors.white, thickness: 1)
          : LineStyle(),
      afterLineStyle: LineStyle(color: Colors.white, thickness: 1),
      alignment: TimelineAlign.start,
      endChild: Container(
        alignment: Alignment.centerLeft,
        height: 0.11 * width,
        child: Row(
          children: [
            SizedBox(width: 0.018 * width),
            Text(
              degree,
              textScaleFactor: 1,
              style: style2.copyWith(fontSize: 0.016 * width),
            ),
          ],
        ),
      ),
    );
  }
}
