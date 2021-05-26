import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApplication',
      home: DefaultTabController(
        length: 3,
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
          ]),
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          MyHomeDialog(context);
        },
        color: Colors.purpleAccent,
        child: Text(
          'CheckAlert',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          AlertDialogWithTextField(context);
        },
        color: Colors.purple,
        child: Text('AlertDialogWithTextField'),
      ),
    );
  }
}

class Videos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          MultipleSelection(context);
        },
        child: Text('Select One'),
        color: Colors.purple,
      ),
    );
  }
}

MyHomeDialog(BuildContext context) {
  //BsicAlertDialog
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) {
        return AlertDialog(
          //backgroundColor: Colors.deepPurple,
          title: Text('Warning'),
          content: Text('This is a try to AlertDialog Widget'),
          actions: [
            FlatButton(
              onPressed: () {
                Navigator.pop(context, false);
              },
              child: Text('Cancel'),
              color: Colors.purple,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
          ],
        );
      });
}

AlertDialogWithTextField(BuildContext context) {
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) {
        return AlertDialog(
          title: Text('TextField'),
          content: TextFormField(
            obscureText: false,
            decoration: InputDecoration(
              hintText: 'Enter your Name',
            ),
          ),
          actions: [
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
          ],
        );
      });
}

MultipleSelection(BuildContext context) {
  showDialog(
      barrierDismissible: true,
      context: context,
      builder: (_) {
        return SimpleDialog(
          title: Text('Select One'),
          children: [
            SimpleDialogOption(
              child: Text('BirthDay'),
              onPressed: () {},
            ),
            SizedBox(
              height: 6,
            ),
            SimpleDialogOption(
              child: Text('Anniversary'),
              onPressed: () {},
            ),
            SizedBox(
              height: 6,
            ),
            SimpleDialogOption(
              child: Text('Congratulations'),
              onPressed: () {},
            ),
            SizedBox(
              height: 6,
            ),
            SimpleDialogOption(
              child: Text('Wedding'),
              onPressed: () {},
            ),
          ],
        );
      });
}
