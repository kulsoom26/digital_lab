import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/diagnosis_screen.dart';
import 'package:flutter_complete_guide/screens/profile_screen.dart';
import 'package:flutter_complete_guide/screens/settings_screen.dart';
import 'package:flutter_complete_guide/screens/tabs_screen.dart';
import 'screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Colors.amber,
        canvasColor: Color.fromARGB(255, 247, 247, 247),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: TextStyle(
                  color: Color.fromRGBO(53, 60, 85, 1),
                  fontSize: 14,
                  fontFamily: 'Raleway'),
              headline4: TextStyle(
                  fontFamily: 'Raleway', fontSize: 30, color: Colors.white),
              headline6: TextStyle(
                fontFamily: 'Raleway',
              ),
              headline5: TextStyle(
                color: Color.fromRGBO(53, 60, 85, 1),
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
              headline3: TextStyle(
                fontFamily: 'Raleway',
                color: Color.fromRGBO(124, 220, 246, 1),
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
              headline2: TextStyle(
                fontFamily: 'Raleway',
                color: Color.fromRGBO(53, 60, 85, 1),
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(),
        HomeScreen.routeName: (ctx) => HomeScreen(),
        DiagnosisScreen.routeName: (ctx) => DiagnosisScreen(),
        SettingsScreen.routeName: (ctx) => SettingsScreen(),
        ProfileScreen.routeName: (ctx) => ProfileScreen(),
      },
    );
  }
}
