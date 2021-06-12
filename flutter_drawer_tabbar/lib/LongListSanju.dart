import 'package:flutter/material.dart';

class Sanju extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('Sanju'),
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        // body:,
      ),
    );
  }
}
