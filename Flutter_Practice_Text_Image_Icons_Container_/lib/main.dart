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
          child: Container(
            height: 250,
            width: 300,
            child: Card(
              color: Colors.amber,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(45),
              ),
              elevation: 20,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.person,
                        color: Colors.blue[900],
                        size: 42,
                      ),
                      title: Text(
                        'Siddhartha Pandey',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Sunwal-2, Nawalparasi',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ButtonBar(
                      children: [
                        FlatButton(
                          onPressed: () {},
                          color: Colors.blue[900],
                          child: Icon(
                            Icons.call,
                            color: Colors.white,
                          ),
                        ),
                        FlatButton(
                          onPressed: () {},
                          color: Colors.blue[900],
                          child: Icon(
                            Icons.location_on_rounded,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        /* body: Center(
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.mail_rounded,
              size: 30,
              color: Colors.amberAccent,
            ),
          ),*/

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
    );
  }
}
