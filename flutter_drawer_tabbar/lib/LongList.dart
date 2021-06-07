import 'package:flutter/material.dart';

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

class Prajwal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('Prajwal'),
          leading: Icon(Icons.person),
        ),
        body: SingleChildScrollView(child: CheckAndRadio()),
      ),
    );
  }
}

class Sujwal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('Sujwal'),
          leading: Icon(Icons.person),
        ),
      ),
    );
  }
}

class CheckAndRadio extends StatefulWidget {
  @override
  _CheckAndRadioState createState() => _CheckAndRadioState();
}

enum Prefer { facebook, instagram, snapchat }

class _CheckAndRadioState extends State<CheckAndRadio> {
  Prefer prefer = Prefer.facebook;

  bool box1 = false;
  bool box2 = false;
  bool box3 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text('Practice of Checkbox and Radio'),
        )),
        Divider(
          height: 20,
          color: Colors.grey,
        ),
        Text('Hobbies'),
        Card(
          elevation: 10,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Football'),
                      Checkbox(
                          activeColor: Colors.red,
                          //checkColor: Colors.black,

                          value: this.box1,
                          onChanged: (value) {
                            setState(() {
                              this.box1 = value;
                            });
                          }),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Read'),
                      Checkbox(
                          activeColor: Colors.red,
                          //checkColor: Colors.black,
                          value: this.box3,
                          onChanged: (value) {
                            setState(() {
                              this.box3 = value;
                            });
                          }),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Horse Ride'),
                      Checkbox(
                          activeColor: Colors.red,
                          //checkColor: Colors.black,
                          value: this.box2,
                          onChanged: (value) {
                            setState(() {
                              this.box2 = value;
                            });
                          }),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text('CheckBoxListTile'),
        SizedBox(
          height: 20,
        ),
        Card(
          elevation: 10,
          child: Container(
            child: Column(
              children: [
                CheckboxListTile(
                    title: Text('Wnat to Call'),
                    secondary: Icon(Icons.call),
                    subtitle: Text('Call at 9:00 am'),
                    activeColor: Colors.grey,
                    checkColor: Colors.black,
                    value: box1,
                    onChanged: (value) {
                      setState(() {
                        this.box1 = value;
                      });
                    }),
                CheckboxListTile(
                    title: Text('Goto College'),
                    secondary: Icon(Icons.school),
                    subtitle: Text('Call at 11:00 am'),
                    activeColor: Colors.grey,
                    checkColor: Colors.black,
                    value: box2,
                    onChanged: (value) {
                      setState(() {
                        this.box2 = value;
                      });
                    }),
                CheckboxListTile(
                    title: Text('play'),
                    secondary: Icon(Icons.sports_soccer),
                    subtitle: Text('at 6:00 pm'),
                    activeColor: Colors.grey,
                    checkColor: Colors.black,
                    value: box3,
                    onChanged: (value) {
                      setState(() {
                        this.box3 = value;
                      });
                    }),
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
        Text('CheckboxWithListTile'),
        SizedBox(
          height: 10,
        ),
        Card(
          elevation: 10,
          child: Container(
            child: Column(
              children: [
                ListTile(
                  title: Text('It is OK!!'),
                  trailing: Checkbox(
                      value: this.box1,
                      onChanged: (bool value) {
                        setState(() {
                          this.box1 = value;
                        });
                      }),
                ),
                ListTile(
                  title: Text('how are you!'),
                  trailing: Checkbox(
                      value: this.box2,
                      onChanged: (bool value) {
                        setState(() {
                          this.box2 = value;
                        });
                      }),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text('Radio'),
        SizedBox(height: 10),
        Container(
          child: Column(
            children: [
              ListTile(
                title: Text('Facebook'),
                leading: Radio(
                    value: Prefer.facebook,
                    groupValue: prefer,
                    onChanged: (value) {
                      setState(() {
                        this.prefer = value;
                      });
                    }),
              ),
              ListTile(
                title: Text('Instagram'),
                leading: Radio(
                    value: Prefer.instagram,
                    groupValue: prefer,
                    onChanged: (value) {
                      setState(() {
                        this.prefer = value;
                      });
                    }),
              ),
              ListTile(
                title: Text('Snapchat'),
                leading: Radio(
                    value: Prefer.snapchat,
                    groupValue: prefer,
                    onChanged: (Prefer value) {
                      setState(() {
                        this.prefer = value;
                      });
                    }),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
