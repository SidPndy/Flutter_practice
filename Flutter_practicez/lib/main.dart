import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
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
        body: Padding(
          padding: EdgeInsets.all(20),
          child: TextField(
            maxLength: 30,
            obscureText: false,
            decoration: InputDecoration(
              labelText: 'Name',
              icon: Icon(
                Icons.business_center,
                color: Colors.lightBlueAccent,
              ),
              hintText: 'Your Name',
              border: InputBorder.none,
            ),
          ),
        ),

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
*/
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
