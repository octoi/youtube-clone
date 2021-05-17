import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/constants.dart';

class AppBottomNavigationBar extends StatelessWidget {
  final Function onUpdate;
  final int selectIndex;

  const AppBottomNavigationBar({Key key, this.onUpdate, this.selectIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectIndex,
      backgroundColor: appPrimaryColor,
      selectedItemColor: appPrimaryLight,
      unselectedItemColor: appSecondaryLight,
      onTap: onUpdate,
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: "Home",
          activeIcon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_fire_department_outlined),
          label: "Trending",
          activeIcon: Icon(Icons.local_fire_department),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.subscriptions_outlined),
          label: 'Subscription',
          activeIcon: Icon(Icons.subscriptions),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_outlined),
          label: "Notifications",
          activeIcon: Icon(Icons.notifications),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.folder_outlined),
          label: 'Library',
          activeIcon: Icon(Icons.folder),
        ),
      ],
    );
  }
}
