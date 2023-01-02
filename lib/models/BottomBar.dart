import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/utilities/constants.dart';
import 'package:universal_html/html.dart' as html;

import 'package:url_launcher/url_launcher.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  bool ishover1 = false;
  bool ishover2 = false;

  void openTwitter() async {
    String url = 'https://twitter.com/insane_soul27';
    if (kIsWeb) {
      html.window.open(url, 'Twitter');
    } else {
      launch(url);
    }
  }

  void openInsta() async {
    String url = 'https://www.instagram.com/pranjal_dubey27/';
    if (kIsWeb) {
      html.window.open(url, 'Insta');
    } else {
      launch(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var width =
        screenSize.width < 900 ? screenSize.width * 2 : screenSize.width;
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 0.032 * width,
                    width: 0.032 * width,
                    child: InkWell(
                      onHover: (value) {
                        setState(() {
                          value ? ishover1 = true : ishover1 = false;
                        });
                      },
                      onTap: () {},
                      child: FloatingActionButton(
                          onPressed: () {
                            openTwitter();
                          },
                          backgroundColor:
                              ishover1 ? Colors.teal : Color(0xFF26B072),
                          child: Image(
                            image: AssetImage(
                              'images/twitter.png',
                            ),
                            height: 0.016 * width,
                            width: 0.016 * width,
                          )),
                    ),
                  ),
                  SizedBox(width: 0.015 * width),
                  SizedBox(
                    height: 0.032 * width,
                    width: 0.032 * width,
                    child: InkWell(
                      onHover: (value) {
                        setState(() {
                          value ? ishover2 = true : ishover2 = false;
                        });
                      },
                      onTap: () {},
                      child: FloatingActionButton(
                        onPressed: () {
                          openInsta();
                        },
                        backgroundColor:
                            ishover2 ? Colors.teal : Color(0xFF26B072),
                        child: Image(
                          image: AssetImage(
                            'images/instagram.png',
                          ),
                          height: 0.016 * width,
                          width: 0.016 * width,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 0.005 * width),
              Text('Developed and Designed by Pranjal Dubey',
                  textScaleFactor: 1,
                  style: style2.copyWith(fontSize: 0.013 * width)),
              SizedBox(height: 0.005 * width),
              RichText(
                textScaleFactor: 1,
                text: TextSpan(
                    text: 'Developed using',
                    style: style2.copyWith(fontSize: 0.013 * width),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' Flutter',
                          style: style2.copyWith(
                              fontSize: 0.013 * width,
                              color: Color(0xFF26B072))),
                      TextSpan(
                          text: ' and Deployed on',
                          style: style2.copyWith(fontSize: 0.013 * width)),
                      TextSpan(
                          text: ' Netlify',
                          style: style2.copyWith(
                              fontSize: 0.013 * width,
                              color: Color(0xFF26B072))),
                    ]),
              ),
              SizedBox(height: 0.005 * width),
              Text('Copyright © 2023 | Pranjal Dubey | All Rights Reserved',
                  textScaleFactor: 1,
                  style: style2.copyWith(fontSize: 0.013 * width)),
            ],
          ),
        ],
      ),
    );
  }
}
