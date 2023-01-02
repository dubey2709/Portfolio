import 'package:flutter/material.dart';
import '../pages/HomePage.dart';

class TopBar extends StatefulWidget {
  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
  ];

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

  Color inActive = Colors.white;
  Color Active = Colors.white;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var width = screenSize.width;
    return PreferredSize(
      preferredSize: Size(screenSize.width, 70),
      child: Container(
        color: Color(0xFF000000),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "<Pranjal Dubey/>",
                      textScaleFactor: 1,
                      style: TextStyle(
                          color: Active,
                          fontSize: width * 0.026,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 3,
                          fontFamily: 'Italianno'),
                    ),
                    Expanded(child: SizedBox()),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[0] = true
                              : _isHovering[0] = false;
                        });
                      },
                      onTap: () {
                        scrolltoItem1();
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Home',
                            textScaleFactor: 1,
                            style: TextStyle(
                                color: inActive, fontSize: 0.016 * width),
                          ),
                          SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[0],
                            child: Container(
                              height: 2,
                              width: 40,
                              color: Active,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: screenSize.width / 20),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[1] = true
                              : _isHovering[1] = false;
                        });
                      },
                      onTap: () {
                        scrolltoItem2();
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'About',
                            textScaleFactor: 1,
                            style: TextStyle(
                                color: inActive, fontSize: 0.016 * width),
                          ),
                          SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[1],
                            child: Container(
                              height: 2,
                              width: 40,
                              color: Active,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: screenSize.width / 20),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[2] = true
                              : _isHovering[2] = false;
                        });
                      },
                      onTap: () {
                        scrolltoItem3();
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Projects',
                            textScaleFactor: 1,
                            style: TextStyle(
                                color: Active, fontSize: 0.016 * width),
                          ),
                          SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[2],
                            child:
                                Container(height: 2, width: 40, color: Active),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: screenSize.width / 20),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[3] = true
                              : _isHovering[3] = false;
                        });
                      },
                      onTap: () {
                        scrolltoItem4();
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Skills',
                            textScaleFactor: 1,
                            style: TextStyle(
                                color: Active, fontSize: 0.016 * width),
                          ),
                          SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[3],
                            child: Container(
                              height: 2,
                              width: 40,
                              color: Active,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: screenSize.width / 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
