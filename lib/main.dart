import 'package:flutter/material.dart';
import 'package:youtube_clone/screens/nav_screen.dart';

void main() {
  runApp(Youtube());
}

class Youtube extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavScreen(),
    );
  }
}
