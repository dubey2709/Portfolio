import 'package:flutter/material.dart';
import 'package:my_portfolio/utilities/constants.dart';

import '../widgets/SkillName.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var width =
        screenSize.width < 900 ? screenSize.width * 2 : screenSize.width;
    return Container(
        padding: EdgeInsets.fromLTRB(
            screenSize.width < 900 ? 0.02 * width : 0.097 * width, 12, 12, 12),
        child: screenSize.width > 900
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Skills / Tools 💻',
                      textScaleFactor: 1,
                      style: style1.copyWith(fontSize: 0.021 * width)),
                  SizedBox(height: 0.014 * width),
                  Row(
                    children: [
                      skillName(width, 'Flutter', 'images/flutter.png'),
                      skillName(width, 'Dart', 'images/dart.png'),
                      skillName(width, 'Kotlin', 'images/Kotlin.png'),
                      skillName(width, 'SQLite', 'images/SQLite.png'),
                      skillName(width, 'Firebase', 'images/Firebase.png'),
                      skillName(width, 'Python', 'images/Python.png'),
                      skillName(width, 'C', 'images/clang.png'),
                      skillName(width, 'C++', 'images/CPP.png'),
                      skillName(width, 'MySQL', 'images/mysql.png'),
                      skillName(width, 'Figma', 'images/Figma.png'),
                    ],
                  ),
                  SizedBox(height: 0.010 * width),
                  Row(
                    children: [
                      skillName(width, 'Github', 'images/github.png'),
                      skillName(width, 'Git', 'images/git.png'),
                      skillName(width, 'VSCode', 'images/vscode.png'),
                      skillName(width, 'Android\n Studio',
                          'images/androidstudio.png'),
                      skillName(width, 'Canva', 'images/canva.png'),
                    ],
                  )
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Skills / Tools 💻',
                      textScaleFactor: 1,
                      style: style1.copyWith(fontSize: 0.021 * width)),
                  SizedBox(height: 0.014 * width),
                  Row(
                    children: [
                      skillName(width, 'Flutter', 'images/flutter.png'),
                      skillName(width, 'Dart', 'images/dart.png'),
                      skillName(width, 'Kotlin', 'images/Kotlin.png'),
                      skillName(width, 'SQLite', 'images/SQLite.png'),
                      skillName(width, 'Firebase', 'images/Firebase.png'),
                    ],
                  ),
                  SizedBox(height: 0.010 * width),
                  Row(
                    children: [
                      skillName(width, 'Python', 'images/Python.png'),
                      skillName(width, 'C', 'images/clang.png'),
                      skillName(width, 'C++', 'images/CPP.png'),
                      skillName(width, 'MySQL', 'images/mysql.png'),
                      skillName(width, 'Figma', 'images/Figma.png'),
                    ],
                  ),
                  SizedBox(height: 0.010 * width),
                  Row(
                    children: [
                      skillName(width, 'Github', 'images/github.png'),
                      skillName(width, 'Git', 'images/git.png'),
                      skillName(width, 'VSCode', 'images/vscode.png'),
                      skillName(width, 'Android\n Studio',
                          'images/androidstudio.png'),
                      skillName(width, 'Canva', 'images/canva.png'),
                    ],
                  )
                ],
              ));
  }
}
