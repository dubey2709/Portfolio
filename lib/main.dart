import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pranjal Dubey',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
