import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/constants.dart';
import 'package:youtube_clone/widgets/app_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appPrimaryColor,
      body: CustomScrollView(
        slivers: [YoutubAppBar()],
      ),
    );
  }
}
