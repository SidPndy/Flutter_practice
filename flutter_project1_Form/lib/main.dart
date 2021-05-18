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
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text('Login'),
          leading: Icon(Icons.login),
          backgroundColor: Colors.grey[800],
          elevation: 0, //Shadow like thing.
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/Pic.PNG'),
                radius: 40,
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
              padding: const EdgeInsets.fromLTRB(20, 5, 5, 0),
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
        ),
      ),
    );
  }
}
