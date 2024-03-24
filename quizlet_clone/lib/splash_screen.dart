import 'package:flutter/material.dart';
import 'login.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const SplashScreen());
}

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
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width; 
    
    return ScreenUtilInit(
      designSize: Size(screenWidth, screenHeight),
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Helvetica-Neue',
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
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
                        width: 90.w,
                        height: 90.h,
                      ),
                    ),
                    const Text('Quizlet',style: TextStyle(fontSize: 48, color: Color(0xFF142850)),),
                    const Text('Empower Your Vocabulary with Flashcards!',style: TextStyle(fontSize: 14)),
                  ],
                ),
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                width: 1000.w,
                height: 800.h,
                top: opened ? -400.h : -235.h,        // Close: -235 - -400
                right: -350.w,
                child: Image(image: AssetImage('assets/images/decorItem1.png'),),
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                top: opened ? 500.h : 235.h,         // Close: 235 - 500
                left: -350.w,
                child: Image(image: AssetImage('assets/images/decorItem1.png'),),
              ),
            ],     
          )
        ),
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
      // opened = !opened;
    });
    await Future.delayed(const Duration(milliseconds: 4000));
    // Add animation1, animation2 with purpose: fill all blank in require function, its like null
    // await Navigator.pushReplacement(context, PageRouteBuilder(pageBuilder: (context, animation1, animation2) => const Login(), transitionDuration: Duration.zero));
  }
}
