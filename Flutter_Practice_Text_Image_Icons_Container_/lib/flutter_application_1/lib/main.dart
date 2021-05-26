import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'app',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[700],
          /* leading: Icon(
            Icons.home,
            size: 30,
          ),*/
          title: Text('Daraz'),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('Siddhartha Pandey'),
                accountEmail: Text('SiddharthaPandey364@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/Pic.PNG'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
