import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/constants.dart';
import 'package:youtube_clone/utils/data.dart';
import 'package:youtube_clone/widgets/stories.dart';
import 'package:youtube_clone/widgets/videos.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appSecondaryColor,
      appBar: AppBar(
        elevation: 2,
        leadingWidth: 100.0,
        backgroundColor: appSecondaryColor,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Image.asset("images/logo.png"),
        ),
        actions: [
          IconButton(icon: Icon(Icons.videocam), onPressed: () {}),
          IconButton(
              icon: Icon(Icons.search), iconSize: 30.0, onPressed: () {}),
          IconButton(
            iconSize: 30.0,
            icon: CircleAvatar(
              foregroundImage: NetworkImage(currentUser.profile),
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          child: Column(
            children: [
              Stories(),
              Videos(),
            ],
          ),
        ),
      ),
    );
  }
}
