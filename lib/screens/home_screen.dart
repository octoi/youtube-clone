import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/constants.dart';
import 'package:youtube_clone/widgets/app_bar.dart';
import 'package:youtube_clone/widgets/stories.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appPrimaryColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55.0),
        child: YoutubeAppBar(),
      ),
      body: ListView(
        children: [
          SliverToBoxAdapter(child: Stories()),
        ],
      ),
    );
  }
}
