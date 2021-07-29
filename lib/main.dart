import 'package:ecommerce_ui/Routing.dart';
import 'package:ecommerce_ui/constants.dart';
import 'package:flutter/material.dart';
import 'Screens/Splach/Splach.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Muli",
        appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
            brightness: Brightness.light,
            iconTheme: IconThemeData(color: Colors.black)),
        textTheme: TextTheme(
            bodyText1: TextStyle(color: kTextColor),
            bodyText2: TextStyle(color: kTextColor)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute:
      Splach.routname,
      routes: routs,
    );
  }
}
