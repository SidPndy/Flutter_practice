import 'package:flutter/material.dart';
import 'Sports.dart';
import 'Home.dart';
import 'Settings.dart';
import 'Videos.dart';
import 'LongList.dart';

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
            bottom: TabBar(
              unselectedLabelColor: Colors.white70,
              isScrollable: false,
              tabs: [
                Tab(
                  text: 'Home',
                  icon: Icon(Icons.home),
                ),
                Tab(
                  text: 'Videos',
                  icon: Icon(Icons.video_library),
                ),
                Tab(
                  text: 'Settings',
                  icon: Icon(Icons.settings),
                ),
                Tab(
                  text: 'Sports',
                  icon: Icon(Icons.sports),
                ),
                Tab(
                  text: 'Long List',
                  icon: Icon(Icons.list),
                ),
              ],
            ),
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text('Siddhartha Pandey'),
                  accountEmail: Text('siddharthapandey364@gmail.com'),
                  decoration: BoxDecoration(
                    color: Colors.purple[900],
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('assets/Pic.PNG'),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.video_library),
                  title: Text('Videos'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                  onTap: () {},
                ),
              ],
            ),
          ),
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
