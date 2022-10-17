import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/diagnosis_screen.dart';
import 'package:flutter_complete_guide/screens/profile_screen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../widgets/main_drawer.dart';
import 'home_screen.dart';
import 'settings_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    DiagnosisScreen(),
    SettingsScreen(),
    ProfileScreen(),
  ];
  List<String> titles = [
    'Home',
    'Diagnosis',
    'Settings',
    'Profile',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(186, 206, 166, 1),
        foregroundColor: Color.fromRGBO(53, 60, 85, 1),
        elevation: 5,
        title: Text(titles[_selectedIndex]),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(186, 206, 166, 1),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300],
              hoverColor: Colors.grey[100],
              gap: 8,
              activeColor: Color.fromRGBO(53, 60, 85, 1),
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100],
              color: Colors.black,
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                  iconActiveColor: Color.fromRGBO(4, 167, 84, 1),
                  backgroundColor:
                      Color.fromRGBO(5, 220, 131, 1).withOpacity(0.3),
                ),
                GButton(
                  icon: Icons.medical_services,
                  text: 'Diagnosis',
                  iconActiveColor: Colors.blue,
                  backgroundColor: Colors.blueAccent.withOpacity(0.3),
                ),
                GButton(
                  icon: Icons.settings,
                  text: 'Settings',
                  iconActiveColor: Color.fromRGBO(165, 42, 42, 1),
                  backgroundColor:
                      Color.fromRGBO(165, 42, 42, 0.5).withOpacity(0.3),
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                  iconActiveColor: Color.fromRGBO(255, 69, 0, 1),
                  backgroundColor:
                      Color.fromRGBO(255, 69, 0, 0.7).withOpacity(0.3),
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
