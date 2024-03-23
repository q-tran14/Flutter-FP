import 'Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily:'Helvetica-Neue'), // Default font for every text in this screen
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    )
  );
}
