import 'package:flutter/material.dart';
import 'Home.dart';
import 'Videos.dart';

class Names extends StatelessWidget {
  final List<String> name;

  final Function(String) onSelected;

  Names({this.name, this.onSelected});
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
            return Home();
          }));
        } else if (studentName == 'Hari') {
          return Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Videos();
          }));
        }
      },
    );
  }
}
