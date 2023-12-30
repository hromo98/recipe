import 'package:flutter/material.dart';
import 'package:recipe/screen/fav.dart';
import 'package:recipe/screen/homepage.dart';
import 'package:recipe/screen/detailspage.dart';
import 'package:recipe/useraccount.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;

  final screens = [
    // HomePage(),
    // Favourites(),
    // Ingridient(),
    HomePage(),
    Favourites(favoritesList: [],),
    Myaccount(),

    // Add more screens as needed
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
          onDestinationSelected: (_currentIndex) => setState(() {
            this._currentIndex = _currentIndex;
          }),
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home_filled), label: 'Home'),
            NavigationDestination(
                icon: Icon(Icons.bookmark), label: 'Favourites'),
            NavigationDestination(
                icon: Icon(Icons.account_circle_rounded), label: 'Ingridient')
          ],
        ),
      ),

      //
      // bottomnavigationBar:BottomNavigationBar(items:
      //   [BottomNavigationBarItem(icon: Icon(Icons.camera ))]);

      // BottomNavigationBar(
      //  currentIndex: _currentIndex,

      //  backgroundColor: Colors.blue[200],
      //  type: BottomNavigationBarType.fixed,
      //  selectedItemColor: Colors.blueAccent,
      //  unselectedItemColor: Colors.amber,
      //  items: <BottomNavigationBarItem>[
      //    BottomNavigationBarItem(
      //      icon: Icon(Icons.home),
      //      label: 'Home',

      //    ),
      //    // BottomNavigationBarItem(
      //    //   icon: Icon(Icons.search),
      //    //   label: 'search',
      //    // ),
      //    BottomNavigationBarItem(
      //      icon: Icon(Icons.bookmark),
      //      label: 'fav',
      //    ),
      //    BottomNavigationBarItem(
      //      icon: Icon(Icons.camera_alt_outlined),
      //      label: 'ingridient',
      //    ),
      //  ],
      //   )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
