import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: new AppBar(
              title: new Text(
                "Hello World",
                style: TextStyle(color: Colors.amber),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            body: new Container(
              child: Wrap(
                
              )
            ),
          ),
        ],
      ),
    );
  }
}