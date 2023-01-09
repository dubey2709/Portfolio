import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/utilities/constants.dart';
import 'package:my_portfolio/widgets/ContactCard.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:universal_html/html.dart' as html;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color background = Color(0xFF000000);
  Color myColor = Color(0xFF26B072);
  Color white = Colors.white;
  Color hoverColor = Colors.teal;
  List<bool> ishover = [false, false, false];
  int x = 0;

  void openLinkedIn() async {
    String url = 'https://www.linkedin.com/in/pranjal-dubey-037040226/';
    if (kIsWeb) {
      html.window.open(url, 'LinkedIn');
    } else {
      launch(url);
    }
  }

  void openGithub() async {
    String url = 'https://github.com/dubey2709';
    if (kIsWeb) {
      html.window.open(url, 'Github');
    } else {
      launch(url);
    }
  }

  void openEmail() async {
    String url = 'mailto:dypranjal3002@gmail.com';
    if (kIsWeb) {
      html.window.open(url, 'Email');
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
      padding: EdgeInsets.fromLTRB(
          screenSize.width < 900 ? 0.02 * width : 0.097 * width, 12, 12, 12),
      width: width,
      color: background,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 0.051 * width,
              ),
              Text(
                'Hey There!, I am-',
                textScaleFactor: 1,
                style: TextStyle(
                    fontSize: 0.021 * width,
                    color: myColor,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 0.008 * width),
              SizedBox(
                child: DefaultTextStyle(
                  style: TextStyle(
                      fontSize: 0.042 * width,
                      color: white,
                      fontWeight: FontWeight.bold),
                  child: x==0?FutureBuilder(
                      future: Future.delayed(Duration(milliseconds: 1300)),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          x = 1;
                          return AnimatedTextKit(
                            isRepeatingAnimation: false,
                            animatedTexts: [
                              TypewriterAnimatedText('Pranjal Dubey.',
                                  speed: Duration(milliseconds: 300)),
                            ],
                            onTap: () {
                              print("Tap Event");
                            },
                          );
                        } else {
                          return SizedBox(
                            child: Text(
                              '',
                              style: TextStyle(fontSize: 0.042 * width),
                            ),
                          );
                        }
                      }):Text('Pranjal Dubey'),
                ),
              ),
              SizedBox(height: 0.008 * width),
              RichText(
                textScaleFactor: 1,
                text: TextSpan(
                    text: 'Flutter Developer.',
                    style: TextStyle(
                        fontSize: 0.021 * width,
                        color: white,
                        fontWeight: FontWeight.bold),
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            ' A self taught Programmer with\nInterest in Computer Science',
                        style: TextStyle(
                            fontSize: 0.021 * width,
                            color: Color(0xFF557588),
                            fontWeight: FontWeight.bold),
                      ),
                    ]),
              ),
              SizedBox(height: 0.013 * width),
              Row(
                children: [
                  Image.asset(
                    'images/laptop.png',
                    width: 0.019 * width,
                    height: 0.019 * width,
                  ),
                  SizedBox(width: 0.006 * width),
                  Text(
                    'Striving to learn and Explore new technologies',
                    textScaleFactor: 1,
                    style: style2.copyWith(fontSize: 0.016 * width),
                  ),
                ],
              ),
              SizedBox(height: 0.006 * width),
              Row(
                children: [
                  Image.asset(
                    'images/scholar.png',
                    width: 0.019 * width,
                    height: 0.019 * width,
                  ),
                  SizedBox(width: 0.006 * width),
                  Text(
                    'Indian Institute of Information Technology, Bhopal',
                    textScaleFactor: 1,
                    style: style2.copyWith(fontSize: 0.016 * width),
                  ),
                ],
              ),
              SizedBox(height: 0.031 * width),
              Row(
                children: [
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? ishover[0] = true : ishover[0] = false;
                      });
                    },
                    onTap: () {
                      openLinkedIn();
                    },
                    child: contactButton(
                        myColor: ishover[0] ? hoverColor : myColor,
                        white: white,
                        PlatformName: 'LinkedIn',
                        PlatformLogo: 'images/Vector.png'),
                  ),
                  SizedBox(width: width / 60),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? ishover[1] = true : ishover[1] = false;
                      });
                    },
                    onTap: () {
                      openGithub();
                    },
                    child: contactButton(
                        myColor: ishover[1] ? hoverColor : myColor,
                        white: white,
                        PlatformName: 'Github',
                        PlatformLogo: 'images/github.png'),
                  ),
                  SizedBox(width: width / 60),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? ishover[2] = true : ishover[2] = false;
                      });
                    },
                    onTap: () {
                      openEmail();
                    },
                    child: contactButton(
                        myColor: ishover[2] ? hoverColor : myColor,
                        white: white,
                        PlatformName: 'Email',
                        PlatformLogo: 'images/email.png'),
                  )
                ],
              )
            ],
          ),
          screenSize.width > 900
              ? Column(
                  children: [
                    SizedBox(width: 0.030 * width),
                    Image(
                      image: AssetImage('images/gif1.gif'),
                      height: 0.39 * width,
                      width: 0.39 * width,
                    ),
                  ],
                )
              : SizedBox()
        ],
      ),
    );
  }
}
