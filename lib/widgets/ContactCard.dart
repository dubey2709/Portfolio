import 'package:flutter/material.dart';

class contactButton extends StatelessWidget {
  const contactButton({
    required this.myColor,
    required this.white,
    required this.PlatformName,
    required this.PlatformLogo,
  });

  final Color myColor;
  final String PlatformName;
  final String PlatformLogo;
  final Color white;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var width =
        screenSize.width < 900 ? screenSize.width * 2 : screenSize.width;
    return Container(
      padding: EdgeInsets.all(0.002 * width),
      height: 0.031 * width,
      width: 0.102 * width,
      decoration: BoxDecoration(
        color: myColor,
        borderRadius: BorderRadius.circular(0.003 * width),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            PlatformName,
            textScaleFactor: 1,
            style: TextStyle(
                color: white, fontSize: 0.014 * width, fontFamily: 'Inter'),
          ),
          SizedBox(width: 0.006 * width),
          Image.asset(
            PlatformLogo,
            width: 0.016 * width,
            height: 0.016 * width,
          ),
        ],
      ),
    );
  }
}
