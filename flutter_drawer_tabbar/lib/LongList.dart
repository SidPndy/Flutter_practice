import 'package:flutter/material.dart';
import 'Home.dart';
import 'Videos.dart';

class Names extends StatelessWidget {
  final List<String> name;

  final Function(String) onSelected;
  final Function(Icon) nameIcon;

  Names({this.name, this.onSelected, this.nameIcon});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: name.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(name[index]),
            onTap: () {
              final names = this.name[index];
              this.onSelected(names);
            },
          );
        });
  }
}

class LongList extends StatelessWidget {
  final List<String> studentNames = [
    'Hari',
    'Ujjwal',
    'Prashant',
    'RamLal',
    'Pandey',
    'Prakriti'
  ];
  @override
  Widget build(BuildContext context) {
    return Names(
      name: studentNames,
      onSelected: (studentName) {
        if (studentName == 'Ujjwal') {
          return Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Ujjwal();
          }));
        } else if (studentName == 'Hari') {
          return Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Hari();
          }));
        }
      },
    );
  }
}

class Ujjwal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('Ujjwal'),
          leading: Icon(Icons.person),
        ),
      ),
    );
  }
}

class Hari extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('Hari'),
          leading: Icon(Icons.person),
        ),
      ),
    );
  }
}
