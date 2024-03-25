import 'package:flutter/material.dart';

// Included: constrant attribute

const priColor = Color(0xFF142850);
const secoColor = Color(0xFFC1DADF);
const bgColor = Colors.white;

const quizlet = Text('Quizlet',style: TextStyle(fontSize: 48, color: Color(0xFF142850)));
const logoPath = 'assets/images/logo.png';
const logan = Text('Empower Your Vocabulary with Flashcards!',style: TextStyle(fontSize: 14));


// Future runSplashScreen() async {
//   await Future.delayed(const Duration(milliseconds: 1000));
//   setState(() {
//     opened = !opened;
//   });
//   await Future.delayed(const Duration(milliseconds: 4000));
//   setState(() {
//     opened = !opened;
//   });
//   await Future.delayed(const Duration(milliseconds: 4000));
//   // Add animation1, animation2 with purpose: fill all blank in require function, its like null
//   await Navigator.pushReplacement(context, PageRouteBuilder(pageBuilder: (context, animation1, animation2) => const Login(), transitionDuration: Duration.zero));
// }