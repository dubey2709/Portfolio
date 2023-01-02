import 'package:flip_card/flip_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/utilities/constants.dart';
import 'package:my_portfolio/widgets/ContactCard.dart';
import 'package:universal_html/html.dart' as html;

import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  bool ishover1 = false;
  bool ishover2 = false;

  void openResume() async {
    String url =
        'https://drive.google.com/file/d/1YVu4HkVhPxx_0fWO-zi4w_2NiDQCR5jh/view?usp=drivesdk ';
    if (kIsWeb) {
      html.window.open(url, 'Resume');
    } else {
      launch(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var width =
        screenSize.width < 900 ? screenSize.width * 2 : screenSize.width;
    Color myColor = Color(0xFF26B072);
    Color white = Colors.white;
    Color hoverColor = Colors.teal;
    return Container(
      padding: EdgeInsets.fromLTRB(
          screenSize.width < 900 ? 0.02 * width : 0.097 * width, 12, 12, 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('About 🙋🏻‍♂️',
              textScaleFactor: 1,
              style: style1.copyWith(fontSize: 0.021 * width)),
          SizedBox(height: 0.014 * width),
          screenSize.width > 900
              ? Row(
                  children: [
                    SizedBox(
                      width: 0.48 * width,
                      child: Text(
                        "Hey I m, Pranjal Dubey a 19 year old tech enthusiast from Prayagraj, Uttar Pradesh. I've been close to computers since an early age, and been passionate about them ever since.\n\nI am an undergraduate student at Indian Institute of Information Technology, Bhopal currently pursuing B.tech. in Computer Science and Engineering. I am a programmer and constantly striving to explore new technologies in order to upgrade my skills.I do programming in various languages and technologies including no-code-tools.\n\nI'm interested in building something awesome with code and automate tasks with code, currently focused on Mobile Development, Open Source and Competitive Programming.",
                        textScaleFactor: 1,
                        style: style2.copyWith(fontSize: 0.016 * width),
                      ),
                    ),
                    SizedBox(width: 0.070 * width),
                    Column(
                      children: [
                        FlipCard(
                          flipOnTouch: true,
                          fill: Fill
                              .fillBack, // Fill the back side of the card to make in the same size as the front.
                          direction: FlipDirection.HORIZONTAL, // default
                          front: CircleAvatar(
                              radius: 0.110 * width,
                              backgroundImage: AssetImage('images/cv.jpeg')),
                          back: CircleAvatar(
                              radius: 0.110 * width,
                              backgroundImage: AssetImage('images/avatar.jpg')),
                        ),
                        SizedBox(height: 0.020 * width),
                        SizedBox(
                          width: 0.280 * width,
                          child: Text(
                            "Commands I live by -\n"
                            "        ''print ( Deserve before desire !! )''",
                            textScaleFactor: 1,
                            style: style2.copyWith(
                              height: 1.5,
                              fontSize: 0.014 * width,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 0.48 * width,
                      child: Text(
                        "Hey I m, Pranjal Dubey a 19 year old tech enthusiast from Prayagraj, Uttar Pradesh. I've been close to computers since an early age, and been passionate about them ever since.\n\nI am an undergraduate student at Indian Institute of Information Technology, Bhopal currently pursuing B.tech. in Computer Science and Engineering. I am a programmer and constantly striving to explore new technologies in order to upgrade my skills.I do programming in various languages and technologies including no-code tools.\n\nI'm interested in building something awesome with code and automate tasks with code, currently focused on Mobile Development, Open Source and Competitive Programming.",
                        textScaleFactor: 1,
                        style: style2.copyWith(fontSize: 0.016 * width),
                      ),
                    ),
                    SizedBox(height: 0.020 * width),
                    Column(
                      children: [
                        FlipCard(
                          flipOnTouch: true,
                          fill: Fill
                              .fillBack, // Fill the back side of the card to make in the same size as the front.
                          direction: FlipDirection.HORIZONTAL, // default
                          front: CircleAvatar(
                              radius: 0.110 * width,
                              backgroundImage: AssetImage('images/cv.jpeg')),
                          back: CircleAvatar(
                              radius: 0.110 * width,
                              backgroundImage: AssetImage('images/avatar.jpg')),
                        ),
                        SizedBox(height: 0.020 * width),
                        SizedBox(
                          width: 0.280 * width,
                          child: Text(
                            "Commands I live by -\n"
                            "        '' print( Deserve before desire !! ) ''",
                            textScaleFactor: 1,
                            style: style2.copyWith(
                              height: 1.5,
                              fontSize: 0.014 * width,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 0.014 * width),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value ? ishover1 = true : ishover1 = false;
                        });
                      },
                      onTap: () {
                        openResume();
                      },
                      child: contactButton(
                          myColor: ishover1 ? hoverColor : myColor,
                          white: white,
                          PlatformName: 'Resume',
                          PlatformLogo: 'images/resume.png'),
                    )
                  ],
                ),
          screenSize.width > 900
              ? Column(
                  children: [
                    SizedBox(height: 0.020 * width),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value ? ishover2 = true : ishover2 = false;
                        });
                      },
                      onTap: () {
                        openResume();
                      },
                      child: contactButton(
                          myColor: ishover2 ? hoverColor : myColor,
                          white: white,
                          PlatformName: 'Resume',
                          PlatformLogo: 'images/resume.png'),
                    )
                  ],
                )
              : SizedBox()
        ],
      ),
    );
  }
}
