import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          AlertDialogWithTextField(context);
        },
        color: Colors.purple,
        child: Text('AlertDialogWithTextField'),
      ),
    );
  }
}

AlertDialogWithTextField(BuildContext context) {
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) {
        return AlertDialog(
          title: Text('TextField'),
          content: TextFormField(
            obscureText: false,
            decoration: InputDecoration(
              hintText: 'Enter your Name',
            ),
          ),
          actions: [
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
          ],
        );
      });
}
