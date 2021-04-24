import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:jumping_bottom_nav_bar/jumping_bottom_nav_bar.dart';
import 'package:mpitapk/tabs/profile.dart';
import 'package:mpitapk/widgets/drawer.dart';

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
        drawer: CustomDrawer(),
        backgroundColor: Color.fromRGBO(31, 118, 186, 1),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBar(
            actions: [Icon(Icons.settings)],
            centerTitle: true,
            title: Image.asset('assets/images/Search.png'),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
        ),
        body: TabBarView(
          children: [Profile(), Profile(), Profile()],
        ),
        bottomNavigationBar: JumpingTabBar(
          onChangeTab: onChangeTab,
          backgroundColor: Color.fromRGBO(31, 118, 186, 1),
          circleGradient: LinearGradient(
            colors: [
              Colors.black,
              Colors.black,
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
          items: [
            TabItemIcon(
              iconData: Icons.person_search,
              curveColor: Colors.white,
            ),
            TabItemIcon(iconData: Icons.star_border, curveColor: Colors.white),
            TabItemIcon(
                iconData: Icons.account_circle, curveColor: Colors.white),
          ],
          selectedIndex: selectedIndex,
        ),
      ),
    );
  }
}
