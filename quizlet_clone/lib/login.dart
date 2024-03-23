import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  
  bool opened = false;
  bool btnUp = false;

  @override
  void initState() {
    runLoginScreen();
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
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1200),
            top: 150,                 // begin pos: 300, end pos: 100
            child: Center(
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
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1200),
            width: 1000,
            height: 800,
            top: opened ? -550 : -235,        // Close: -235 - -400
            right: -350,
            child: const Image(image: AssetImage('assets/images/decorItem1.png'),),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1200),
            top: opened ? 500 : 235,         // Close: 235 - 500
            left: -350,
            child: const Image(image: AssetImage('assets/images/decorItem1.png'),),
          ),
          AnimatedPositioned(
            top: btnUp ? 620 : 900,       // begin: 800 - end: 620
            height: 50,
            width: 300,
            duration: const Duration(milliseconds: 1200),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                minimumSize: const Size.fromHeight(55),
                backgroundColor: Color(0xFFC1DADF),
                shadowColor: Colors.black,
                elevation: 10
              ),
              onPressed: (){
                print('Hi');
              },
              child: Text('Sign In',style: TextStyle(fontSize: 28, color: Color(0xFF142850))),
            ),
          ),
        ],     
      )
    );
  }

  Future runLoginScreen() async {
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() {
      opened = !opened;
    });
    await Future.delayed(const Duration(milliseconds: 1000));
    setState(() {
      btnUp = !btnUp;
    });
  }

}