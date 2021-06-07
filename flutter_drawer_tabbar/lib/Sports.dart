import 'package:flutter/material.dart';

class Sports extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              trailing: Icon(Icons.arrow_forward),
              selected: false,
              selectedTileColor: Colors.purple,
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.map),
              title: Text('Countries'),
              trailing: Icon(Icons.arrow_forward),
              selected: false,
              selectedTileColor: Colors.purple,
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.cake),
              title: Text('Birthday'),
              trailing: Icon(Icons.arrow_forward),
              selected: false,
              selectedTileColor: Colors.purple,
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.sports_football),
              title: Text('Play Ground'),
              trailing: Icon(Icons.arrow_forward),
              selected: false,
              selectedTileColor: Colors.purple,
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.flag),
              title: Text('Politics'),
              trailing: Icon(Icons.arrow_forward),
              selected: false,
              selectedTileColor: Colors.purple,
              onTap: () {},
            ),
          ),
          Card(
            color: Colors.amber,
            child: ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Location'),
              trailing: Icon(Icons.arrow_forward),
              selected: false,
              selectedTileColor: Colors.purple,
              onTap: () {},
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Friends'),
            trailing: Icon(Icons.arrow_forward),
            selected: false,
            selectedTileColor: Colors.purple,
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.restaurant),
            title: Text('Hotels'),
            trailing: Icon(Icons.arrow_forward),
            selected: false,
            selectedTileColor: Colors.purple,
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.shop),
            title: Text('Shops'),
            trailing: Icon(Icons.arrow_forward),
            selected: false,
            selectedTileColor: Colors.purple,
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.hardware),
            title: Text('Hardware'),
            trailing: Icon(Icons.arrow_forward),
            selected: false,
            selectedTileColor: Colors.purple,
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.money),
            title: Text('Bank'),
            trailing: Icon(Icons.arrow_forward),
            selected: false,
            selectedTileColor: Colors.purple,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
