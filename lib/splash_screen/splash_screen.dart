import 'dart:core';
import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  final String nextRoute;

  SplashScreen({this.nextRoute});

  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed(widget.nextRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Image.asset('assets/images/Logo.png')],
        ),
      ),
    );
  }
}
