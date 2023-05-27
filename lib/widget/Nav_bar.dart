import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
import 'package:flutter/material.dart';
import 'package:circlenavbar/pages/Alarm.dart';
import 'package:circlenavbar/pages/History.dart';
import 'package:circlenavbar/pages/Search.dart';
import 'package:circlenavbar/pages/home.dart';

class Navbar extends StatefulWidget {
  Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int currentPage = 0;
  final List<Widget> _pages = [
    Home(),
    History(),
    Search(),
    Alarm(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentPage],
      bottomNavigationBar: CircleBottomNavigationBar(
        initialSelection: currentPage,
        circleColor: Colors.purple,
        activeIconColor: Colors.white,
        inactiveIconColor: Colors.grey,
        tabs: [
          TabData(
            icon: Icons.home,
            iconSize: 25, // Optional
            fontSize: 12, // Optional
          ),
          TabData(icon: Icons.history),
          TabData(icon: Icons.search),
          TabData(icon: Icons.alarm),
        ],
        onTabChangedListener: (index) => setState(() => currentPage = index),
      ),
    );
  }
}
