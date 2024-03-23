import 'package:quizlet_clone/login.dart';

import 'splash_screen.dart';
import 'Home.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: 'Helvetica-Neue',
      scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
    ), // Default font for every text in this screen
    debugShowCheckedModeBanner: false,
    home: const SplashScreen(),
  ));
}
