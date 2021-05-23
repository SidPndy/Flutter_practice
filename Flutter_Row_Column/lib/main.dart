import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final passKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: passKey,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please Enter Details';
                } else {
                  return null;
                }
              },
              // maxLength: 30,
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                hintText: 'Your name here',
                icon: Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please Enter Details';
                } else {
                  return null;
                }
              },
              // maxLength: 30,
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                hintText: 'e-mail here',
                icon: Icon(
                  Icons.mail,
                  color: Colors.blue,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please Enter Details';
                } else {
                  return null;
                }
              },
              // maxLength: 30,
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                hintText: 'Github link here',
                icon: Icon(
                  Icons.link,
                  color: Colors.blue,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            FloatingActionButton.extended(
              onPressed: () {
                if (passKey.currentState.validate()) {
                  return Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text('Submitting to the database......')));
                } else {
                  return Scaffold.of(context).showSnackBar(
                      SnackBar(content: Text('Submission Failed!!')));
                }
              },
              label: Text('        Submit          '),
              splashColor: Colors.blue[900],
            )
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('FirstPage'),
          leading: Icon(
            Icons.home_outlined,
            color: Colors.amber,
          ),
        ),
        body: MyForm(),
 */
        /*body: Center(
          child: Stack(
            children: [
              Container(
                height: 300,
                width: 300,
                decoration:
                    BoxDecoration(color: Colors.amber, shape: BoxShape.circle),
              ),
              Positioned(
                top: 80,
                right: 110,
                child: Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.green, shape: BoxShape.circle),
                  //child: FloatingActionButton(
                  // onPressed: () {},
                  //  backgroundColor: Colors.blue,
                  //  child: Text('+'),
                  //  splashColor: Colors.amberAccent,
                  //  ),
                ),
              )
            ],
          ),
        ),
*/
        /* body: Stack(                     //getting familiar with stack
          alignment: Alignment.center,
          children: [
            Container(
              color: Colors.green,
            ),
            Container(
              height: 500,
              width: 250,
              color: Colors.orange[600],
            ),
            Container(
              height: 200,
              width: 125,
              color: Colors.blue[600],
            ),
            Container(
              width: 120,
              decoration: BoxDecoration(
                color: Colors.amber[600],
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),*/

        /* body: Padding(
          padding: EdgeInsets.all(20),
          child: TextFormField(
            maxLength: 30,
            obscureText: false,
            decoration: InputDecoration(
              icon: Icon(
                Icons.business_center,
                color: Colors.lightBlueAccent,
              ),
              hintText: 'Enter your name',
            ),
          ),
        ),
*/
        /*   body: Row(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: RaisedButton(
                onPressed: () {},
                child: Text('1'),
                color: Colors.grey,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: RaisedButton(
                onPressed: () {},
                child: Text('2'),
                color: Colors.grey,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: RaisedButton(
                onPressed: () {},
                child: Text('3'),
                color: Colors.grey,
              ),
            ),
            RichText(
             text: TextSpan(
                  text: 'Hello',
                  style: TextStyle(
                    color: Colors.amber,
                  ),
                  children: [
                    TextSpan(
                      text: 'World',
                      style: TextStyle(
                        color: Colors.purpleAccent,
                      ),
                    ),
                  ]),
            ),
          ],
        ),
        /*    body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                'Row Test with container',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(width: 4, color: Colors.red[600]),
              ),
              padding: EdgeInsets.all(10),
            ),
            Text(
              'Hye',
              style: TextStyle(
                fontSize: 20,
                color: Colors.cyan,
                fontWeight: FontWeight.bold,
              ),
            ),
            RaisedButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.mail,
                color: Colors.amber,
              ),
              label: Text('Send'),
            ),
          ],
        ),
*/
        /* body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text(
                'Row Test with container',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(width: 4, color: Colors.red[600]),
              ),
              padding: EdgeInsets.all(10),
            ),
            Text(
              'Hye',
              style: TextStyle(
                fontSize: 20,
                color: Colors.cyan,
                fontWeight: FontWeight.bold,
              ),
            ),
            RaisedButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.mail,
                color: Colors.amber,
              ),
              label: Text('Send'),
            ),
          ],
        ),
        */
      ),
    );
  }
}
