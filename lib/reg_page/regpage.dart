import 'dart:core';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mpitapk/mainapp/menupage.dart';

class RegPage extends StatefulWidget {
  @override
  _RegPageState createState() => _RegPageState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

final nameController = TextEditingController();
final emailController = TextEditingController();
final passwordController = TextEditingController();
final nicknameController = TextEditingController();

void Registration(BuildContext context) async {
  String firstName = nameController.text;
  String secondName = emailController.text;
  String password = passwordController.text;
  String nickName = nicknameController.text;
  var url = Uri.parse('https://mpitback.herokuapp.com/users/register');
  var response = await http.post(url, body: {
    'firstName': '$firstName',
    'lastName': '$secondName',
    'username': '$nickName',
    'password': '$password'
  });
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
            content: Text('Пользователь уже зарегистрирован'),
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

class _RegPageState extends State<RegPage> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        resizeToAvoidBottomInset: false,
        body: Center(
            child: Container(
                child: Column(children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4,
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
                    top: MediaQuery.of(context).size.width * 0.01,
                    left: MediaQuery.of(context).size.width * 0.1,
                    right: MediaQuery.of(context).size.width * 0.1,
                  ),
                  child: Center(
                    child: Container(
                        margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.04,
                          right: MediaQuery.of(context).size.width * 0.04,
                        ),
                        child: Text('Регистрация',
                            style: TextStyle(fontSize: 20))),
                  )),
              Container(
                  height: 40,
                  margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.1,
                    right: MediaQuery.of(context).size.width * 0.1,
                  ),
                  child: TextField(
                    controller: nameController,
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
                        labelText: 'Имя',
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
                        labelText: 'Фамилия',
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
                    controller: nicknameController,
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
                        labelText: 'Ник',
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
                    top: MediaQuery.of(context).size.width * 0.1,
                    left: MediaQuery.of(context).size.width * 0.1,
                    right: MediaQuery.of(context).size.width * 0.1,
                  ),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text('Регистрация',
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    color: Color.fromRGBO(76, 117, 184, 1),
                    onPressed: () => Registration(context),
                  )),
            ])),
          )
        ]))));
  }
}
