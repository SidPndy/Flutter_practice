import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Trying'),
          leading: Icon(
            Icons.home,
            color: Colors.purple,
          ),
        ),
        body: Center(
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.mail_rounded,
              size: 30,
              color: Colors.amberAccent,
            ),
          ),

          /*   child: RaisedButton.icon(         // button with icon
            onPressed: () {},
            icon: Icon(Icons.email),
            label: Text('Send'),
            color: Colors.amberAccent,
          ),       */

          /* child: FlatButton(              //button without icon
            onPressed: () {},
            color: Colors.purpleAccent,
            
            child: Text(                        
              'Shop Now',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),     */

          /*  child: Icon(
            Icons.business_center,
            color: Colors.purple,
            size: 100,            
          ),     */

          //child: Image.asset('Assets/shake.jpg'),

          /*    child: Text(                          //importing font (first add in pubspec.yaml)
            'My program',
            style: TextStyle(
              fontFamily: 'christmas',
              fontWeight: FontWeight.bold,
              color: Colors.red[600],
              fontSize: 30,
              letterSpacing: 2,
            ),      
          ),*/

          /*  body: Container(
          decoration: BoxDecoration(                              //decorating the container.
              color: Colors.purple, 
              border: Border.all(
                width: 4,
                color: Colors.amber,
              ),
              borderRadius: BorderRadius.circular(50),
              boxShadow: [                                         //outer stroke.       
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(4, 4),
                )
              ]),
          height: 50,
          width: 600,
          alignment: Alignment.center,
          // padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
          margin: EdgeInsets.only(top: 100),
          child: Text(
            'Container',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        */
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.purple,
          splashColor: Colors.black12,
          child: Text(
            'Click',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
