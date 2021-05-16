import 'package:flutter/material.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int _selectScreenIndex = 0;

  final _screens = [
    Scaffold(body: Center(child: Text("Screen 1"))),
    Scaffold(body: Center(child: Text("Screen 2"))),
    Scaffold(body: Center(child: Text("Screen 3"))),
    Scaffold(body: Center(child: Text("Screen 4"))),
    Scaffold(body: Center(child: Text("Screen 5"))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectScreenIndex,
        onTap: (int newIdx) {
          setState(() {
            _selectScreenIndex = newIdx;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: "Add",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions_outlined),
            label: 'Subscription',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library_outlined),
            label: 'Library',
          ),
        ],
      ),
    );
  }
}
