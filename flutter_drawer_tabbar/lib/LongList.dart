import 'package:flutter/material.dart';
import 'package:flutter_drawer_tabbar/LongListSanju.dart';
import 'LongListPrajwal.dart';
import 'LongListSujwal.dart';
import 'LongListUjjwal.dart';
import 'LongListSanju.dart';

class Students {
  final String name;
  final IconData icon;

  const Students({this.name, this.icon});
}

class LongList extends StatelessWidget {
  final List<Students> studentNames = <Students>[
    Students(
      name: 'Ujjwal',
      icon: Icons.home,
    ),
    Students(
      name: 'Prajwal',
      icon: Icons.work_outlined,
    ),
    Students(
      name: 'Sujwal',
      icon: Icons.casino,
    ),
    Students(
      name: 'Sanju',
      icon: Icons.money,
    ),
    Students(
      name: 'Prabesh',
      icon: Icons.location_city,
    ),
    Students(
      name: 'Sid',
      icon: Icons.play_arrow,
    ),
    Students(
      name: 'Srijan',
      icon: Icons.border_horizontal_outlined,
    ),
    Students(
      name: 'Mark',
      icon: Icons.female,
    ),
    Students(
      name: 'Paudel',
      icon: Icons.snowboarding,
    ),
    Students(
      name: 'Prabin',
      icon: Icons.emoji_objects_sharp,
    ),
    Students(
      name: 'Alexa',
      icon: Icons.favorite_outline_sharp,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple[800],
      child: ListView(children: [
        Column(
          children: studentNames
              .map((e) => Card(
                    //color: Colors.purple[400],
                    child: ListTile(
                      title: Text(e.name),
                      leading: Icon(e.icon),
                      onTap: () {
                        if (e.name == 'Ujjwal') {
                          return Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Ujjwal()));
                        } else if (e.name == 'Prajwal') {
                          return Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Prajwal()));
                        } else if (e.name == 'Sujwal') {
                          return Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Sujwal()));
                        } else if (e.name == 'Sanju') {
                          return Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Sanju()));
                        }
                      },
                    ),
                  ))
              .toList(),
        ),
      ]),
    );
  }
}

// class Names extends StatelessWidget {
//   final List<String> name;

//   final Function(String) onSelected;

//   Names({this.name, this.onSelected});
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         itemCount: name.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(name[index]),
//             onTap: () {
//               final names = this.name[index];

//               this.onSelected(names);
//             },
//           );
//         });
//   }
// }

// class LongList extends StatelessWidget {
//   final List<String> studentNames = [
//     'Hari',
//     'Ujjwal',
//     'Prashant',
//     'RamLal',
//     'Pandey',
//     'Prakriti'
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Names(
//       name: studentNames,
//       onSelected: (studentName) {
//         if (studentName == 'Ujjwal') {
//           return Navigator.push(context, MaterialPageRoute(builder: (context) {
//             return Ujjwal();
//           }));
//         } else if (studentName == 'Hari') {
//           return Navigator.push(context, MaterialPageRoute(builder: (context) {
//             return Hari();
//           }));
//         }
//       },
//     );
//   }
// }
