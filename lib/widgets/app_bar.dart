import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/constants.dart';
import 'package:youtube_clone/utils/data.dart';

class YoutubAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leadingWidth: 100.0,
      backgroundColor: appSecondaryColor,
      floating: true,
      leading: Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: Image.asset("images/logo.png"),
      ),
      actions: [
        IconButton(icon: Icon(Icons.videocam), onPressed: () {}),
        IconButton(icon: Icon(Icons.search), iconSize: 30.0, onPressed: () {}),
        IconButton(
          iconSize: 30.0,
          icon: CircleAvatar(
            foregroundImage: NetworkImage(currentUser.profile),
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
