import 'package:flutter/material.dart';

class Ratings extends StatefulWidget {
  @override
  _RatingsState createState() => _RatingsState();
}

class _RatingsState extends State<Ratings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage('assets/images/page1.png'),
              fit: BoxFit.cover)),
    );
    ;
  }
}