import 'package:flutter/material.dart';

class Videos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          MultipleSelection(context);
        },
        child: Text('Select One'),
        color: Colors.purple,
      ),
    );
  }
}

MultipleSelection(BuildContext context) {
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
