import 'package:flutter/material.dart';
import './screens/homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            fontFamily: 'IBMPlexSans',
            visualDensity: VisualDensity.adaptivePlatformDensity,
            backgroundColor: Color(0x000000),
            // buttonTheme: ButtonThemeData(buttonColor: Color(0x007AFF)),
            textTheme: TextTheme(
              subtitle1: TextStyle(
                fontWeight: FontWeight.normal,
                color: Color(0xDEFFFFFF),
                fontSize: 16, //By default 16
              ),
              subtitle2: TextStyle(
                fontWeight: FontWeight.normal,
                color: Color(0xDEFFFFFF),
                fontSize: 14, //By default 16
              ),
              // Sales indicator
              headline6: TextStyle(
                fontWeight: FontWeight.normal,
                color: Color(0x99FFFFFF),
                fontSize: 12, //By default 16
              ),
              headline5: TextStyle(
                fontWeight: FontWeight.w500,
                color: Color(0xDEFFFFFF),
                fontSize: 18, //By default 16
              ),
              headline4: TextStyle(
                fontWeight: FontWeight.normal,
                color: Color(0x99FFFFFF),
                fontSize: 14, //By default 16
              ),
            )),
        home: HomeScreen());
  }
}
