import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/Projects.dart';
import '../models/BottomBar.dart';
import '../models/ConnectWithMe.dart';
import '../models/TopBarContents.dart';
import '../models/Contents.dart';
import 'Education.dart';
import 'Home.dart';
import 'About.dart';
import 'Skills.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

final itemKey1 = GlobalKey();
final itemKey2 = GlobalKey();
final itemKey3 = GlobalKey();
final itemKey4 = GlobalKey();

class _HomePageState extends State<HomePage> {
  Color background = Color(0xFF000000);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var width = screenSize.width;

    return Scaffold(
        backgroundColor: background,
        appBar: screenSize.width < 800
            ? AppBar(
                backgroundColor: background,
                elevation: 5.00,
                title: Text(
                  "<Pranjal Dubey/>",
                  style: TextStyle(
                    fontFamily: 'Italianno',
                    fontSize: 26,
                  ),
                ),
                centerTitle: true,
              )
            : PreferredSize(
                child: TopBar(),
                preferredSize: Size(
                  screenSize.width,
                  screenSize.height,
                ),
              ),
        drawer: Contents(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              children: [
                Container(key: itemKey1, child: Home()),
                screenSize.width < 900
                    ? SizedBox(height: 0.030 * width)
                    : SizedBox(height: 0 * width),
                screenSize.width < 900
                    ? Image(
                        image: AssetImage('images/gif1.gif'),
                        height: 0.39 * width * 1.5,
                        width: 0.39 * width * 1.5,
                      )
                    : SizedBox(),
                SizedBox(height: 0.050 * width),
                Container(key: itemKey2, child: About()),
                SizedBox(height: 0.050 * width),
                Education(),
                SizedBox(height: 0.050 * width),
                Container(key: itemKey3, child: Projects()),
                SizedBox(height: 0.050 * width),
                Container(key: itemKey4, child: Skills()),
                SizedBox(height: 0.050 * width),
                Connect(),
                SizedBox(height: 0.050 * width),
                BottomBar(),
              ],
            ),
          ),
        ));
  }
}
