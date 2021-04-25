import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Image.asset('assets/images/Logo.png'),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 50, top: 50),
            title: Text('Аккаунт', style: TextStyle(fontSize: 25)),
            onTap: () {
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 50),
            title: Text('Информация', style: TextStyle(fontSize: 25)),
            onTap: () {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 50),
            title: Text('Справка', style: TextStyle(fontSize: 25)),
            onTap: () {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 50),
            title: Text('Настройки', style: TextStyle(fontSize: 25)),
            onTap: () {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 50),
            title: Text('Помощь', style: TextStyle(fontSize: 25)),
            onTap: () {},
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
              child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text('Выйти',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  color: Color.fromRGBO(241, 84, 63, 0.66),
                  onPressed: () => SystemNavigator.pop()))
        ],
      ),
    );
  }
}
