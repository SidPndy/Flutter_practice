import 'package:flutter/material.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projecy1.try',
      home: Scaffold(
        // backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Icon(Icons.login),
          title: Text('Sign Up'),
          backgroundColor: Colors.blue[800],
          elevation: 0, //Shadow like thing.
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(33, 10, 0, 0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/Pic.PNG'),
                      radius: 35,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Siddhartha Pandey',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900],
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
              Divider(
                height: 30,
                color: Colors.grey,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(33, 0, 0, 0),
                child: Text(
                  'Nickname',
                  style: TextStyle(
                    fontSize: 13,
                    letterSpacing: 3,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[800],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(36, 0, 20, 0),
                child: TextFormField(
                  /* validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter your name';
                    }
                    return null;
                  },*/
                  // maxLength: 30,
                  decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    hintText: 'example: Alexgender',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(33, 5, 0, 0),
                child: Text(
                  'E-mail',
                  style: TextStyle(
                    fontSize: 13,
                    letterSpacing: 3,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[800],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(36, 0, 20, 0),
                child: TextField(
                  // maxLength: 30,
                  decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    hintText: 'example.Alexgender@email.com',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(33, 5, 0, 0),
                child: Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 13,
                    letterSpacing: 3,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[800],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(36, 0, 20, 0),
                child: TextField(
                  // maxLength: 30,
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    hintText: 'q@5swohRd',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(33, 5, 0, 0),
                child: Text(
                  'Confirm Password',
                  style: TextStyle(
                    fontSize: 13,
                    letterSpacing: 3,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[800],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(36, 0, 20, 0),
                child: TextField(
                  // maxLength: 30,
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    hintText: 'q@5swohRd',
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: FloatingActionButton.extended(
                  onPressed: () {},

                  backgroundColor: Colors.blue[900],
                  label: Text('                Sign Up                  '),
                  //icon: Icon(Icons.login_sharp,),
                ),
              ),

              /* Center(
                child: RaisedButton.icon(
                  onPressed: () {},
                  
                  color: Colors.blue,
                  icon: Icon(
                    Icons.login_rounded,
                    color: Colors.white,
                  ),
                  
                  label: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 18,
                      letterSpacing: 3,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),*/
            ],
          ),
        ),

        /*  body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/Pic.PNG'),
                radius: 35,
              ),
            ),
            Divider(
              height: 40,
              color: Colors.grey[500],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 5, 0),
              child: TextField(
                //   maxLength: 25,
                style: TextStyle(
                  height: 1,
                ),
                decoration: InputDecoration(
                  hintText: 'example: Alex',
                  labelText: 'Name',
                  labelStyle: TextStyle(
                    color: Colors.grey[500],
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey[500],
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey[500],
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 5, 5, 0),
              child: TextField(
                //  maxLength: 35,
                style: TextStyle(
                  height: 1,
                ),
                decoration: InputDecoration(
                  icon: Icon(Icons.mail_outline),
                  hintText: 'name.example@email.com',
                  labelText: 'E-mail',
                  labelStyle: TextStyle(
                    color: Colors.grey[500],
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey[500],
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 5, 5, 0),
              child: TextField(
                //   maxLength: 35,
                style: TextStyle(
                  height: 1,
                ),
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'S@mpl3.#90!s',
                  labelText: 'password',
                  labelStyle: TextStyle(
                    color: Colors.grey[500],
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey[500],
                      ),
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  color: Colors.grey[800],
                  onPressed: () {},
                  child: Text(
                    'SignUp',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[500],
                    ),
                  ),
                ),
                SizedBox(width: 30),
                RaisedButton(
                  color: Colors.grey[800],
                  onPressed: () {},
                  child: Text(
                    'SignIn',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[500],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ), */
      ),
    );
  }
}
