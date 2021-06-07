import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Sports.dart';
import 'Home.dart';
import 'Settings.dart';
import 'Videos.dart';
import 'LongList.dart';
import 'DrawerItems.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApplication',
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('MyApplictionDrawer')),
            backgroundColor: Colors.purple[900],
            brightness: Brightness.dark,
            bottom: TabBar(
              unselectedLabelColor: Colors.white70,
              isScrollable: true,
              tabs: [
                Tab(
                  text: 'Home',
                  // icon: Icon(Icons.home),
                ),
                Tab(
                  text: 'Videos',
                  //icon: Icon(Icons.video_library),
                ),
                Tab(
                  text: 'Settings',
                  //icon: Icon(Icons.settings),
                ),
                Tab(
                  text: 'Sports',
                  //icon: Icon(Icons.sports),
                ),
                Tab(
                  text: 'Long List',
                  //icon: Icon(Icons.list),
                ),
              ],
            ),
          ),
          drawer: RealDrawer(),
          body: TabBarView(children: [
            Home(),
            Videos(),
            Settings(),
            Sports(),
            LongList(),
          ]),
        ),
      ),
    );
  }
}
