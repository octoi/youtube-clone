import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/constants.dart';

class TempScreen extends StatelessWidget {
  final String title;

  TempScreen({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appPrimaryColor,
      body: Center(
        child: Text(
          title,
          style: TextStyle(color: appPrimaryLight),
        ),
      ),
    );
  }
}
