import 'package:flutter/material.dart';
import 'package:youtube_clone/screens/home_screen.dart';
import 'package:youtube_clone/utils/constants.dart';
import 'package:youtube_clone/utils/screens.dart';
import 'package:youtube_clone/widgets/bottom_navigation.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int _selectScreenIndex = 0;

  final _screens = [
    HomeScreen(),
    TempScreen(title: "Explore"),
    TempScreen(title: "Subscriptions"),
    TempScreen(title: "Notifications"),
    TempScreen(title: "Library"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appPrimaryColor,
      body: _screens[_selectScreenIndex],
      bottomNavigationBar: AppBottomNavigationBar(
        onUpdate: (int idx) {
          setState(() {
            _selectScreenIndex = idx;
          });
        },
        selectIndex: _selectScreenIndex,
      ),
    );
  }
}
