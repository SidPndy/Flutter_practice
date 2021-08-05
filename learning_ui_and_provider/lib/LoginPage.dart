import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Login')),
        backgroundColor: Colors.green[900],
      ),
      body: Form(
        key: formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: MyBox(),
            ),
            SizedBox(height: 10),
            FloatingActionButton.extended(
              onPressed: () {
                if (formkey.currentState!.validate()) {
                  Navigator.pushNamed(context, '/home');
                } else {
                  return null;
                }
              },
              label: Text('          Login         '),
              backgroundColor: Colors.green[900],
            ),
          ],
        ),
      ),
    );
  }
}

class MyBox extends StatelessWidget {
  static final user = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your name';
        } else
          return null;
      },
      controller: user,
      maxLength: 20,
      decoration: InputDecoration(
        hintText: 'Enter your name',
        border: UnderlineInputBorder(),
      ),
    );
  }
}
