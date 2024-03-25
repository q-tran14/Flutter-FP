import 'package:flutter/material.dart';
//import 'package:responsive_framework/responsive_framework.dart';
import 'pages/splash_screen.dart';
import 'constrant.dart';

void main() {
  runApp(const QuizletApp());
}

class QuizletApp extends StatelessWidget {
  const QuizletApp({super.key});

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    String platform = Theme.of(context).platform.toString();
    print(platform + '(h - w): ' + height.toString() + ' - ' + width.toString());

    return MaterialApp(
      // builder: (context, child) => ResponsiveBreakpoints.builder(
      //   child: child!,
      //   breakpoints: [
      //     ResponsiveBreakpointsData()
      //   ]
      // ),
      theme: ThemeData(
        fontFamily: 'Helvetica-Neue',
        scaffoldBackgroundColor: bgColor,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}