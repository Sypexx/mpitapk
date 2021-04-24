import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:jumping_bottom_nav_bar/jumping_bottom_nav_bar.dart';

// class Destination {
//   const Destination(this.title, this.icon, this.color);
//   final String title;
//   final IconData icon;
//   final MaterialColor color;
// }

// const List<Destination> allDestinations = <Destination>[
//   Destination('Рейтинг', Icons.dehaze, Colors.teal),
//   Destination('Достижения', Icons.star_border, Colors.cyan),
//   Destination('Профиль', Icons.account_circle, Colors.orange)
// ];

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 1;

  void onChangeTab(int index) {
    selectedIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Bottom Bar Page"),
        ),
        body: TabBarView(
          children: [
            new Container(
              color: Colors.white,
            ),
            new Container(
              color: Colors.white,
              child: Center(child: Text('asddasasddas'),),
            ),
            new Container(
              color: Colors.white,
            ),
          ],
        ),
        bottomNavigationBar: 
        JumpingTabBar(
          onChangeTab: onChangeTab,
          backgroundColor: Colors.blue,
          circleGradient: LinearGradient(
            colors: [
              Colors.black,
              Colors.black,
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
          items: [
            TabItemIcon(iconData: Icons.healing, curveColor: Colors.white,),
            TabItemIcon(iconData: Icons.healing, curveColor: Colors.white),
            TabItemIcon(iconData: Icons.location_on, curveColor: Colors.white),
          ],
          selectedIndex: selectedIndex,
        ),
      ),
    );
  }
}