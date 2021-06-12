import 'package:flutter/material.dart';

class Ujjwal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('Ujjwal'),
          leading: BackButton(
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Container(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: 150,
                color: Colors.cyan,
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                ),
              ),
              Container(
                width: 150,
                color: Colors.cyan,
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  onTap: () {},
                ),
              ),
              Card(
                child: Container(
                  width: 150,
                  color: Colors.purple,
                  child: ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                    onTap: () {},
                  ),
                ),
              ),
              Container(
                width: 150,
                color: Colors.cyan,
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  onTap: () {},
                ),
              ),
              Container(
                width: 150,
                color: Colors.cyan,
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
