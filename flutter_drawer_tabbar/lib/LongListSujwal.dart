import 'package:flutter/material.dart';

class Sujwal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('Sujwal'),
          leading: BackButton(
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: SingleChildScrollView(child: MyLinearProgress()),
      ),
    );
  }
}

class MyLinearProgress extends StatefulWidget {
  @override
  _MyLinearProgressState createState() => _MyLinearProgressState();
}

class _MyLinearProgressState extends State<MyLinearProgress> {
  bool prog = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 10),
          Text('ProgressBar Practice'),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              width: 380,
              child: Card(
                elevation: 10,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        width: 300,
                        child: prog
                            ? LinearProgressIndicator(
                                backgroundColor: Colors.purple,
                                color: Colors.pink,
                              )
                            : Center(
                                child: Text(
                                    'press the button to see progressbar')),
                      ),
                    ),
                    RaisedButton(
                      onLongPress: () {
                        // return Scaffold.of(context).showSnackBar(
                        //     SnackBar(content: Text('Hello This is SnackBar')));

                        final snackBar = SnackBar(
                          content: Text('Hello! World'),
                          action:
                              SnackBarAction(label: 'Undo', onPressed: () {}),
                        );
                        return Scaffold.of(context).showSnackBar(snackBar);
                      },
                      onPressed: () {
                        setState(() {
                          this.prog = !prog;
                        });
                      },
                      child: Text('Click'),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          MyCircularProgress(),
          Divider(
            height: 50,
            color: Colors.grey,
          ),
          Text('This is ToolTip Practice'),
          MytoolTip(),
          Divider(
            height: 50,
            color: Colors.grey,
          ),
          Text('Slider Practice'),
          MySlider(),
          SizedBox(height: 20),
          MySwitch(),
          SizedBox(height: 20),
          MyTable(),
        ],
      ),
    );
  }
}

class MyTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      defaultColumnWidth: FixedColumnWidth(70),
      border: TableBorder.all(
        width: 3,
        color: Colors.cyan,
      ),
      children: [
        TableRow(
          children: [
            Text('hello'),
            Text('hello'),
            Text('hello'),
            Text('hello'),
            Text('hello')
          ],
        ),
        TableRow(
          children: [
            Text('hello'),
            Text('hello'),
            Text('hello'),
            Text('hello'),
            Text('hello')
          ],
        ),
        TableRow(
          children: [
            Text('hello'),
            Text('hello'),
            Text('hello'),
            Text('hello'),
            Text('hello')
          ],
        ),
      ],
    );
  }
}

class MySwitch extends StatefulWidget {
  @override
  _MySwitchState createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {
  bool switchState = false;
  String displayText = 'Switch is Off';

  void switchWork(bool value) {
    if (switchState == false) {
      setState(() {
        switchState = true;
        displayText = 'Switch is On';
      });
    } else {
      setState(() {
        switchState = false;
        displayText = 'Switch is Off';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('$displayText'),
        Switch(
          value: switchState,
          onChanged: switchWork,
          //inactiveThumbColor: Colors.cyan,
          activeColor: Colors.purple,
          //inactiveTrackColor: Colors.cyan,
          inactiveThumbColor: Colors.blue,
        ),
      ],
    );
  }
}

class MyCircularProgress extends StatefulWidget {
  @override
  _MyCircularProgressState createState() => _MyCircularProgressState();
}

class _MyCircularProgressState extends State<MyCircularProgress> {
  bool circProg = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        width: 380,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                child: circProg
                    ? CircularProgressIndicator(
                        backgroundColor: Colors.amber,
                        color: Colors.cyan,
                      )
                    : Text('press to see circular progress bar'),
              ),
            ),
            SizedBox(height: 10),
            RaisedButton(
              onPressed: () {
                setState(() {
                  circProg = !circProg;
                });
              },
              child: Text('Click Here'),
            )
          ],
        ),
      ),
    );
  }
}

class MytoolTip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        height: 100,
        width: 370,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Tooltip(
              showDuration: Duration(seconds: 5),
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(20),
              ),
              message: 'this is home',
              child: Icon(
                Icons.home,
                size: 50,
              ),
            ),
            Tooltip(
              showDuration: Duration(seconds: 5),
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(20),
              ),
              message: 'this is School',
              child: Icon(
                Icons.school,
                size: 50,
              ),
            ),
            Tooltip(
              showDuration: Duration(seconds: 5),
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(20),
              ),
              message: 'this is Ball',
              child: Icon(
                Icons.sports_soccer,
                size: 50,
              ),
            ),
            Tooltip(
              showDuration: Duration(seconds: 5),
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(20),
              ),
              message: 'this is TV',
              child: Icon(
                Icons.tv,
                size: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MySlider extends StatefulWidget {
  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  int sliderValue = 6;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        height: 60,
        child: Row(
          children: [
            Icon(
              Icons.volume_down,
              size: 50,
            ),
            Expanded(
              child: Slider(
                  min: 1,
                  max: 20,
                  // divisions: 40,
                  // label: '$sliderValue',
                  value: sliderValue.toDouble(),
                  onChanged: (double _value) {
                    setState(() {
                      this.sliderValue = _value.round();
                    });
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
