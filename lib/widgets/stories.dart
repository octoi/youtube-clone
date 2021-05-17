import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/constants.dart';
import 'package:youtube_clone/utils/data.dart';

class Stories extends StatelessWidget {
  List<Padding> getProfiles() {
    List<Padding> _widgets = [];

    for (int i = 0; i != 8; i++) {
      _widgets.add(Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Stack(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(youtuber.profile),
              maxRadius: 25.0,
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: appSecondaryColor,
                  borderRadius: BorderRadius.circular(50.0),
                ),
                padding: EdgeInsets.all(2.0),
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  maxRadius: 6.0,
                ),
              ),
            )
          ],
        ),
      ));
    }

    return _widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 20, 20),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(children: getProfiles()),
      ),
    );
  }
}
