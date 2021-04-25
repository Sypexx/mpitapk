import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromRGBO(31, 118, 186, 1),
        child: SizedBox(
          height: 300,
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0))),
                alignment: Alignment.bottomCenter,
                width: MediaQuery.of(context).size.width * 1,
                height: 550,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Image.asset('assets/images/ava.png'),
                      width: 150,
                      height: 150,
                      color: Colors.transparent,
                    ),
                    Text(
                      'Егоров  Никита',
                      style: TextStyle(fontSize: 24),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 300,
                        height: 2,
                        color: Colors.black),
                    Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 300,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                child: Column(
                              children: [
                                Icon(
                                  Icons.phone,
                                  size: 50,
                                ),
                                Text('Телефон')
                              ],
                            )),
                            Container(
                                child: Column(
                              children: [
                                Icon(
                                  Icons.mail,
                                  size: 50,
                                ),
                                Text('Почта')
                              ],
                            )),
                            Container(
                                child: Column(
                              children: [
                                Icon(
                                  Icons.camera_alt,
                                  size: 50,
                                ),
                                Text('Инстаграм')
                              ],
                            ))
                          ],
                        ))
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
