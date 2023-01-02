import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utilities/constants.dart';
import 'SkillCard.dart';
import 'package:universal_html/html.dart' as html;

class project extends StatefulWidget {
  const project(this.element, this.projectTitle, this.projectDesc, this.skills,
      this.link);
  final String element;
  final String projectTitle;
  final String projectDesc;
  final List<String> skills;
  final String link;

  @override
  State<project> createState() => _projectState();
}

class _projectState extends State<project> {
  void openProject() async {
    String url =
        'https://drive.google.com/file/d/1YVu4HkVhPxx_0fWO-zi4w_2NiDQCR5jh/view?usp=drivesdk ';
    if (kIsWeb) {
      html.window.open(widget.link, 'Github');
    } else {
      launch(widget.link);
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var width =
        screenSize.width < 900 ? screenSize.width * 2 : screenSize.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        screenSize.width > 900
            ? Container(
                padding: EdgeInsets.all(0.007 * width),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(0.015 * width)),
                child: Image.asset(
                  widget.element,
                  height: 0.358 * width,
                ),
              )
            : SizedBox(),
        SizedBox(
          width: 0.032 * width,
        ),
        Column(
          crossAxisAlignment: screenSize.width < 900
              ? CrossAxisAlignment.center
              : CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  widget.projectTitle,
                  textScaleFactor: 1,
                  style: style2.copyWith(
                      fontSize: 0.016 * width, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 0.010 * width),
                InkWell(
                  onTap: () {
                    openProject();
                  },
                  child: Icon(Icons.open_in_new_rounded,
                      color: Colors.white, size: 0.016 * width),
                )
              ],
            ),
            SizedBox(height: 0.019 * width),
            screenSize.width < 900
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(0.007 * width),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(0.015 * width)),
                        child: Image.asset(
                          widget.element,
                          height: 0.455 * screenSize.width,
                        ),
                      ),
                      SizedBox(height: 0.030 * width)
                    ],
                  )
                : SizedBox(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: screenSize.width > 900
                      ? 0.300 * screenSize.width
                      : 0.650 * screenSize.width,
                  child: Text(
                    widget.projectDesc,
                    textScaleFactor: 1,
                    textAlign: screenSize.width < 900
                        ? TextAlign.justify
                        : TextAlign.left,
                    style: style2.copyWith(fontSize: 0.016 * width),
                  ),
                ),
                SizedBox(height: 0.019 * width),
                Text(
                  'Technologies used',
                  textScaleFactor: 1,
                  style: style2.copyWith(fontSize: 0.016 * width),
                ),
                SizedBox(height: 0.010 * width),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < widget.skills.length; i++)
                      Row(
                        children: [
                          Skill(widget.skills[i], width),
                          SizedBox(
                            width: 0.006 * width,
                          )
                        ],
                      ),
                  ],
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
