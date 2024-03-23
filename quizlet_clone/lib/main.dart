import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Helvetica-Neue'),
    debugShowCheckedModeBanner: true,
    home: const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MY TEST'
        ),
      ),
      body: Center(
        child: Text('Hello World!'),
      ),
    );
  }
}
