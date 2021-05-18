import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/data.dart';
import 'package:youtube_clone/widgets/video.dart';

class Videos extends StatelessWidget {
  List<Widget> getVideos() {
    List<Widget> _widgets = [];

    for (int idx = 0; idx > 10; idx++) {
      _widgets.add(Video(youtubeVideo: ytVideo));
    }

    return _widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: getVideos());
  }
}
