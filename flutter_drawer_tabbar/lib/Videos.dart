import 'package:flutter/material.dart';
import 'package:flutter_drawer_tabbar/Sports.dart';
import 'Sports.dart';

class Videos extends StatelessWidget {
  final String wishes;
  const Videos({this.wishes});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          multipleSelection(context);
        },
        child: Text('Select One'),
        color: Colors.purple,
      ),
    );
  }
}

multipleSelection(BuildContext context) {
  showDialog(
      barrierDismissible: true,
      context: context,
      builder: (_) {
        return SimpleDialog(
          title: Text('Select One'),
          children: [
            SimpleDialogOption(
              child: Text('BirthDay'),
              onPressed: () {},
            ),
            SizedBox(
              height: 6,
            ),
            SimpleDialogOption(
              child: Text('Anniversary'),
              onPressed: () {},
            ),
            SizedBox(
              height: 6,
            ),
            SimpleDialogOption(
              child: Text('Congratulations'),
              onPressed: () {},
            ),
            SizedBox(
              height: 6,
            ),
            SimpleDialogOption(
              child: Text('Wedding'),
              onPressed: () {},
            ),
          ],
        );
      });
}
