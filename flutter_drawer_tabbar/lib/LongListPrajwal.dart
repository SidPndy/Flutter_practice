import 'package:flutter/material.dart';

class Prajwal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('Prajwal'),
          leading: BackButton(
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: SingleChildScrollView(child: CheckAndRadio()),
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
                          onChanged: (bool value) {
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
