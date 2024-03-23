import 'package:flutter/material.dart';
import 'login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{

  bool opened = false;

  @override
  void initState() {
    runSplashScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.cover,
                    width: 90,
                    height: 90,
                  ),
                ),
                const Text('Quizlet',style: TextStyle(fontSize: 48, color: Color(0xFF142850)),),
                const Text('Empower Your Vocabulary with Flashcards!',style: TextStyle(fontSize: 14)),
              ],
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
            width: 1000,
            height: 800,
            top: opened ? -400 : -235,        // Close: -235 - -400
            right: -350,
            child: Image(image: AssetImage('assets/images/decorItem1.png'),),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
            top: opened ? 500 : 235,         // Close: 235 - 500
            left: -350,
            child: Image(image: AssetImage('assets/images/decorItem1.png'),),
          ),
        ],     
      )
    );
  }

  Future runSplashScreen() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    setState(() {
      opened = !opened;
    });
    await Future.delayed(const Duration(milliseconds: 4000));
    setState(() {
      opened = !opened;
    });
    await Future.delayed(const Duration(milliseconds: 4000));
    // Add animation1, animation2 with purpose: fill all blank in require function, its like null
    await Navigator.pushReplacement(context, PageRouteBuilder(pageBuilder: (context, animation1, animation2) => const Login(), transitionDuration: Duration.zero));
  }
}