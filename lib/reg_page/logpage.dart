import 'dart:core';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mpitapk/mainapp/menupage.dart';

class LogPage extends StatefulWidget {
  @override
  _LogPageState createState() => _LogPageState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

final emailController = TextEditingController();
final passwordController = TextEditingController();

void Auth(BuildContext context) async {
  String email1 = emailController.text;
  String pass1 = passwordController.text;
  var url = Uri.parse('https://mpitback.herokuapp.com/users/authenticate');
  var response =
      await http.post(url, body: {'username': '$email1', 'password': '$pass1'});
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');

  if (response.statusCode == 200) {
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      duration: Duration(seconds: 4),
      content: Row(
        children: <Widget>[
          CircularProgressIndicator(),
          Text("  Signing-In...")
        ],
      ),
    ));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  } else
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Ошибка'),
            content: Text('Почта или пароль были введены неверно'),
            actions: <Widget>[
              FlatButton(
                child: Text('Закрыть'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
}

class _LogPageState extends State<LogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        resizeToAvoidBottomInset: false,
        body: Center(
            child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                      Color.fromRGBO(107, 129, 238, 1),
                      Color.fromRGBO(54, 78, 155, 1)
                    ])),
                child: Column(children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.5,
            child: Container(
              margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.2),
              child: Image.asset('assets/images/Logo.png'),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.width * 0.936,
            margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.06,
              right: MediaQuery.of(context).size.width * 0.06,
            ),
            child: Container(
                child: Column(children: <Widget>[
              Container(
                  height: MediaQuery.of(context).size.width * 0.1,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width * 0.1,
                    left: MediaQuery.of(context).size.width * 0.1,
                    right: MediaQuery.of(context).size.width * 0.1,
                  ),
                  child: Center(
                    child: Container(
                        margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.04,
                          right: MediaQuery.of(context).size.width * 0.04,
                        ),
                        child: Text('Вход', style: TextStyle(fontSize: 20))),
                  )),
              Container(
                  height: 40,
                  margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.1,
                    right: MediaQuery.of(context).size.width * 0.1,
                  ),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(76, 117, 184, 1),
                                width: 3)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(
                              width: 3, color: Color.fromRGBO(76, 117, 184, 1)),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(
                              width: 3, color: Color.fromRGBO(76, 117, 184, 1)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(
                              width: 3, color: Color.fromRGBO(76, 117, 184, 1)),
                        ),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide: BorderSide(
                                width: 3,
                                color: Color.fromRGBO(76, 117, 184, 1))),
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide: BorderSide(
                                width: 3,
                                color: Color.fromRGBO(76, 117, 184, 1))),
                        labelText: 'Почта',
                        labelStyle:
                            TextStyle(color: Color.fromRGBO(76, 117, 184, 1))),
                  )),
              Container(
                  height: 40,
                  margin: EdgeInsets.only(
                    top: 20,
                    left: MediaQuery.of(context).size.width * 0.1,
                    right: MediaQuery.of(context).size.width * 0.1,
                  ),
                  child: TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(76, 117, 184, 1),
                                width: 3)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(
                              width: 3, color: Color.fromRGBO(76, 117, 184, 1)),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(
                              width: 3, color: Color.fromRGBO(76, 117, 184, 1)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(
                              width: 3, color: Color.fromRGBO(76, 117, 184, 1)),
                        ),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide: BorderSide(
                                width: 3,
                                color: Color.fromRGBO(76, 117, 184, 1))),
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide: BorderSide(
                                width: 3,
                                color: Color.fromRGBO(76, 117, 184, 1))),
                        labelText: 'Пароль',
                        labelStyle:
                            TextStyle(color: Color.fromRGBO(76, 117, 184, 1))),
                  )),
              Container(
                  height: MediaQuery.of(context).size.width * 0.1,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width * 0.2,
                    left: MediaQuery.of(context).size.width * 0.1,
                    right: MediaQuery.of(context).size.width * 0.1,
                  ),
                  child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text('Вход',
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                      color: Color.fromRGBO(76, 117, 184, 1),
                      onPressed: () => Auth(context))),
            ])),
          )
        ]))));
  }
}