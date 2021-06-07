import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          myHomeDialog(context);
        },
        color: Colors.purpleAccent,
        child: Text(
          'CheckAlert',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

myHomeDialog(BuildContext context) {
  //BsicAlertDialog
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) {
        return AlertDialog(
          //backgroundColor: Colors.deepPurple,
          title: Text('Warning'),
          content: Text('This is a try to AlertDialog Widget'),
          actions: [
            FlatButton(
              onPressed: () {
                Navigator.pop(context, false);
              },
              child: Text('Cancel'),
              color: Colors.purple,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
          ],
        );
      });
}
