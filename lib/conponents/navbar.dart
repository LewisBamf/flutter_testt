import 'package:flutter/material.dart';
import '../utils/colors.dart'; 

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int currentPageIndex = 0;
  
  @override
  Widget build(BuildContext context) {
return Theme(
  data: ThemeData(
    navigationBarTheme: NavigationBarThemeData(
      labelTextStyle: MaterialStateProperty.resolveWith<TextStyle?>(
        (states) => TextStyle(color: Colors.white), // Customize the label text style
      ),
    ),
  ),
      child: Scaffold(
        bottomNavigationBar: NavigationBar(
          backgroundColor: MyColors.primary,
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          indicatorColor: MyColors.secondary,
          selectedIndex: currentPageIndex,
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(Icons.dashboard, color: Colors.white),
              icon: Icon(Icons.dashboard, color: Colors.white, ),
              label: 'dashboard',
            ),
            NavigationDestination(
              icon: Icon(Icons.edit_note, color: Colors.white),
              label: 'Notes',
            ),
            NavigationDestination(
              icon: Icon(Icons.settings, color: Colors.white),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
