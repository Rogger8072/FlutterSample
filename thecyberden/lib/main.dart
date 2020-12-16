import 'package:flutter/material.dart';
import 'package:thecyberden/service_details_screen.dart';
import 'package:thecyberden/services_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TheCyberDen',
      theme: ThemeData(
        primaryColor: Color(0xff050506),
        accentColor: Color(0xff050506),
        canvasColor: Color(0xff050506),

// Color.fromRGBO(255, 184, 38, 1.0)
        // brightness: Brightness.dark,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromARGB(
                  20,
                  51,
                  51,
                  1,
                ),
              ),
              bodyText2: TextStyle(
                color: Color.fromARGB(
                  20,
                  51,
                  51,
                  1,
                ),
              ),
              headline6: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
      ),
      // home: ServicesScreen(),
      routes: {
        '/': (ctx) => ServicesScreen(),
        ServiceDetailsScreen.routeName: (ctx) => ServiceDetailsScreen(),
      },
    );
  }
}
