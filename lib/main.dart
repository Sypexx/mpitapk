import 'package:flutter/material.dart';
import 'mainapp/menupage.dart';
import 'reg_page/logpage.dart';
import 'reg_page/mainpage.dart';
import 'reg_page/regpage.dart';
import 'splash_screen/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    '/Home': (BuildContext context) => HomeScreen(),
    '/LogPage': (BuildContext context) => LogPage(),
    '/RegPage' : (BuildContext context) => RegPage(),
    '/HomePage' : (BuildContext context) =>  HomePage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(nextRoute: '/Home'),
      routes: routes,
    );
  }
}