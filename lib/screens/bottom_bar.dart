import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:indu_wellness/screens/health_page.dart';
import 'package:indu_wellness/screens/home_page.dart';
import 'package:indu_wellness/screens/myth_page.dart';
import 'package:indu_wellness/screens/tracking_page.dart';

class BottomBar extends StatefulWidget {
  int passedIndex;
  BottomBar({
    Key? key,
    this.passedIndex = 0,
  }) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex = 0;

  @override
  void initState() {
    int selectedIndex = widget.passedIndex;
  }

  void onTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  static final List<Widget> _screens = <Widget>[
    const HomePage(),
    const TrackingPage(),
    const HealthPage(),
    const MythPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home'.tr,
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.track_changes,
              color: Colors.black,
            ),
            label: 'Tracker'.tr,
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.medical_information,
              color: Colors.black,
            ),
            label: 'Health'.tr,
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.compress_sharp,
              color: Colors.black,
            ),
            label: 'Myths'.tr,
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.black,
        onTap: onTapped,
      ),
    );
  }
}
