import 'package:flutter/material.dart';

import '../widgets/projectDesc.dart';

const TextStyle style1 = TextStyle(
  color: Color(0xFF26B072),
  fontFamily: 'Inter',
  fontWeight: FontWeight.bold,
);

const TextStyle style2 = TextStyle(color: Colors.white, fontFamily: 'Inter');

const InputDecoration decor = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    borderSide: BorderSide.none,
  ),
);

final List<Widget> images = [
  project(
      'images/project1.jpg',
      'Upasthiti',
      'An event attendance app with secure login options (fingerprint and face recognition) that allows users to check in and out of events in real time using location tracking. It offers live updates on attendance and has a user-friendly interface. Users can create profiles and view their attendance history. It utilizes a real-time database.',
      ['Flutter', 'Firestore', 'Figma'],
      'https://github.com/dubey2709/Upasthiti'),
  project(
      'images/project2.png',
      'Greedy Gamble',
      'Greedy Gamble is a decentralized Flutter app for two players to gamble using a coin flip. Players deposit a specified amount, and the winner receives the total sum of both deposits while the loser loses their entire amount. The app stores player deposits on a local blockchain network, and players can keep playing by mutually agreeing to deposit more.',
      ['Flutter', 'Solidity', 'Metamask', 'Ganache'],
      'https://github.com/dubey2709/GreedyGamble'),
  project(
      'images/project3.png',
      'The Bro Code',
      'A real time group chat application, built using Flutter, offers login and registration functionality for users. The app allows users to communicate with each other in real time and stores all chat and user data in a Firebase Real Time Database. The app is designed to provide a seamless chat experience for users.',
      ['Flutter', 'Dart', 'FirebaseAuth', 'Firestore'],
      'https://github.com/dubey2709/TheBroCode'),
  project(
      'images/project4.png',
      'Schedula',
      'Schedula is a Todo list app with a clean and visually appealing user interface, built using Flutter. The app allows users to add tasks and mark them as completed once they are finished. The task list can be easily managed by deleting tasks with a single or double tap. Schedula is a simple and intuitive app that helps users keep track of their tasks and stay organized.',
      ['Flutter', 'Dart', 'Provider'],
      'https://github.com/dubey2709/Schedula'),
  project(
      'images/project5.jpg',
      'Newzzzgram',
      'Newzzzgram is a news application that uses an API to fetch latest news of past 1 month period. Application shows 20 random news at a time which can be refreshed after clicking on the refresh button. The detailed news can be seen after clicking on the link given along with a particular news.',
      ['Flutter', 'Dart', 'REST API'],
      'https://github.com/dubey2709/News_API'),
  project(
      'images/project6.jpg',
      'Android Notebook',
      'Android notebook is a note keeping app built using SQLite database and Flutter. It stores all the notes locally on the users device and also provide the facilities to perform the basic CRUD operations on each of the note. The app features a simple User Interface with different coloured grid cards on the screen.',
      ['Flutter', 'Dart', 'SQLite'],
      'https://github.com/dubey2709/AndroidNotebook'),
];
