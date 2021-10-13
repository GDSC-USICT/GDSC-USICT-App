import 'package:flutter/material.dart';
import 'package:gdsc_usict/Screens/landing_screen.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GDSC',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: landingScreen,
      routes: {
        landingScreen: (_) => LandingScreen(),
      },
    );
  }
}
