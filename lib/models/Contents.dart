import 'package:flutter/material.dart';
import 'package:my_portfolio/utilities/constants.dart';
import '../pages/HomePage.dart';

class Contents extends StatefulWidget {
  const Contents({Key? key}) : super(key: key);

  @override
  State<Contents> createState() => _ContentsState();
}

class _ContentsState extends State<Contents> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var width =
        screenSize.width < 900 ? screenSize.width * 2 : screenSize.width;

    Future scrolltoItem1() async {
      final context = itemKey1.currentContext!;
      await Scrollable.ensureVisible(context, duration: Duration(seconds: 1));
    }

    Future scrolltoItem2() async {
      final context = itemKey2.currentContext!;
      await Scrollable.ensureVisible(context, duration: Duration(seconds: 1));
    }

    Future scrolltoItem3() async {
      final context = itemKey3.currentContext!;
      await Scrollable.ensureVisible(context, duration: Duration(seconds: 1));
    }

    Future scrolltoItem4() async {
      final context = itemKey4.currentContext!;
      await Scrollable.ensureVisible(context, duration: Duration(seconds: 1));
    }

    return SafeArea(
      child: Drawer(
        backgroundColor: Colors.white,
        child: Container(
          color: Color(0xFF000000),
          child: Padding(
            padding: EdgeInsets.all(width * 0.010),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    scrolltoItem1();
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Home',
                    textScaleFactor: 1,
                    style: style2.copyWith(fontSize: 0.016 * width),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 0.003 * width, bottom: 0.003 * width),
                  child: Divider(
                    color: Colors.white,
                    thickness: 2,
                  ),
                ),
                InkWell(
                  onTap: () {
                    scrolltoItem2();
                    Navigator.pop(context);
                  },
                  child: Text(
                    'About',
                    textScaleFactor: 1,
                    style: style2.copyWith(fontSize: 0.016 * width),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 0.003 * width, bottom: 0.003 * width),
                  child: Divider(
                    color: Colors.white,
                    thickness: 2,
                  ),
                ),
                InkWell(
                  onTap: () {
                    scrolltoItem3();
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Projects',
                    textScaleFactor: 1,
                    style: style2.copyWith(fontSize: 0.016 * width),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 0.003 * width, bottom: 0.003 * width),
                  child: Divider(
                    color: Colors.white,
                    thickness: 2,
                  ),
                ),
                InkWell(
                  onTap: () {
                    scrolltoItem4();
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Skills',
                    textScaleFactor: 1,
                    style: style2.copyWith(fontSize: 0.016 * width),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "Intruder's World",
                      textScaleFactor: 1,
                      style: style2.copyWith(fontSize: 0.016 * width),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
