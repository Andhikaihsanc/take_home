import 'package:flutter/material.dart';
import 'package:take_home/pages/home.dart';
import 'package:take_home/pages/map.dart';
import 'package:take_home/pages/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Keep track of the current page to display
  int _selectedIndex = 0;

  final List _pages = [
    // profilepage
    const ProfilePage(),

    // homepage
    const HomePage(),

    // settingspage
    const LocationPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: const [
          //profile
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),

          //home
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),

          //location
          BottomNavigationBarItem(
              icon: Icon(Icons.map_outlined), label: 'Location')
        ],
      ),
    );
  }
}
