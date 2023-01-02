import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../utilities/constants.dart';

class MainCarousel extends StatefulWidget {
  MainCarousel(this.width);
  final double width;
  @override
  _MainCarouselState createState() => _MainCarouselState();
}

class _MainCarouselState extends State<MainCarousel> {
  final String imagePath = 'images/';

  final CarouselController _controller = CarouselController();

  List _isHovering = [false, false, false, false, false, false, false];
  List _isSelected = [true, false, false, false, false, false, false];

  int _current = 0;

  final List<String> projectTitle = [
    'Upasthiti',
    'Greedy Gamble',
    'TheBroCode',
    'Schedula',
    'Newzzzgram',
    'Android Notebook'
  ];

  List<Widget> generateImageTiles(screenSize) {
    return images
        .map(
          (element) => ClipRRect(
              borderRadius: BorderRadius.circular(8.0), child: element),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var imageSliders = generateImageTiles(screenSize);

    return Column(
      children: [
        CarouselSlider(
          items: imageSliders,
          options: CarouselOptions(
              padEnds: true,
              height: screenSize.width > 900
                  ? 0.350 * widget.width
                  : 0.600 * widget.width,
              enlargeCenterPage: false,
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                  for (int i = 0; i < imageSliders.length; i++) {
                    if (i == index) {
                      _isSelected[i] = true;
                    } else {
                      _isSelected[i] = false;
                    }
                  }
                });
              }),
          carouselController: _controller,
        ),
        SizedBox(height: 0.024 * widget.width),
        screenSize.width < 900
            ? Container()
            : Center(
                heightFactor: 1,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.black),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 0.009 * widget.width,
                      bottom: 0.009 * widget.width,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        for (int i = 0; i < imageSliders.length; i++)
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                onHover: (value) {
                                  setState(() {
                                    value
                                        ? _isHovering[i] = true
                                        : _isHovering[i] = false;
                                  });
                                },
                                onTap: () {
                                  _controller.animateToPage(i);
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: 0.006 * widget.width,
                                      bottom: 0.006 * widget.width),
                                  child: Text(
                                    projectTitle[i],
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                      color: _isHovering[i]
                                          ? Color(0xFF26B072)
                                          : Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Visibility(
                                maintainSize: true,
                                maintainAnimation: true,
                                maintainState: true,
                                visible: _isSelected[i],
                                child: AnimatedOpacity(
                                  duration: Duration(milliseconds: 400),
                                  opacity: _isSelected[i] ? 1 : 0,
                                  child: Container(
                                    height: 0.003 * widget.width,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF26B072),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(0.006 * widget.width),
                                      ),
                                    ),
                                    width: 0.1 * widget.width,
                                  ),
                                ),
                              )
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
              ),
      ],
    );
  }
}
