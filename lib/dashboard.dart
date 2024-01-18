import 'package:flutter/material.dart';
import 'package:recipe/screen/fav.dart';
import 'package:recipe/screen/homepage.dart';

import 'package:recipe/useraccount.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;

  final screens = [
    const HomePage(),
    const Favourites(),
    const Myaccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.blue.shade200,
          labelTextStyle: const MaterialStatePropertyAll(
            TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        child: NavigationBar(
          height: 60,
          backgroundColor: Colors.amberAccent.shade400,
          selectedIndex: _currentIndex,
          onDestinationSelected: (currentIndex) => setState(() {
            _currentIndex = currentIndex;
          }),
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home_filled), label: 'Home'),
            NavigationDestination(
                icon: Icon(Icons.bookmark), label: 'Favourites'),
            NavigationDestination(icon: Icon(Icons.store), label: 'About')
          ],
        ),
      ),
    );
  }
}
