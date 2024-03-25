import 'package:flutter/material.dart';
//import 'package:responsive_framework/responsive_framework.dart';
import 'package:quizlet_clone/constrant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{

  bool opened = false;

  @override
  void initState() {
    runSplashScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        alignment: AlignmentDirectional.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                child: Image.asset(
                  logoPath,
                  height: 90,
                  width: 90,
                ),
              ),
              Text('Quizlet',style: TextStyle(fontSize: 48, color: Color(0xFF142850))),
              Text('Empower Your Vocabulary with Flashcards!',style: TextStyle(fontSize: 14)),
            ],
          ),
          AnimatedPositioned(
            width: screenWidth*3,
            top: opened ? -screenHeight*0.65 : -screenHeight*0.35,//Open: -screenHeight*0.65    - Close: -screenHeight*0.35
            duration: const Duration(milliseconds: 1600),
            child: Expanded(
              child: Image(image: AssetImage('assets/images/decorItem1.png')),
            ),
          ),
          AnimatedPositioned(
            width: screenWidth*3,
            bottom: opened ? -screenHeight*0.65 : -screenHeight*0.42,//Open: -screenHeight*0.65    - Close: -screenHeight*0.42
            duration: const Duration(milliseconds: 1600),
            child: Expanded(
              child: Image(image: AssetImage('assets/images/decorItem1.png')),
            ),
          ),
        ],
      ),
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
    //await Navigator.pushReplacement(context, PageRouteBuilder(pageBuilder: (context, animation1, animation2) => const Login(), transitionDuration: Duration.zero));
  }
}
