import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/constants.dart';
import 'package:youtube_clone/utils/data.dart';

class Video extends StatelessWidget {
  final YoutubeVideo youtubeVideo;

  Video({this.youtubeVideo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      color: appPrimaryColor,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                image: NetworkImage(youtubeVideo.thumbnail),
                fit: BoxFit.cover,
              ),
            ),
            height: 220.0,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(5.0),
                    color: Colors.black,
                    child: Text("3:33", style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(youtubeVideo.creator.profile),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            youtubeVideo.title,
                            style: TextStyle(
                              color: appPrimaryLight,
                              fontSize: 18.0,
                            ),
                          ),
                          Icon(
                            Icons.more_vert,
                            color: appPrimaryLight,
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            youtubeVideo.creator.name,
                            style: TextStyle(color: appSecondaryLight),
                          ),
                          Text(
                            " • " + youtubeVideo.views,
                            style: TextStyle(color: appSecondaryLight),
                          ),
                          Text(
                            " • 11 year ago",
                            style: TextStyle(color: appSecondaryLight),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
