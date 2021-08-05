import 'package:flutter/material.dart';

import 'LoginPage.dart';

class MyModel extends ChangeNotifier {
  var name = MyBox.user;

  onclklgn(nam) {
    name = nam;
    notifyListeners();
  }
}

// class MYDetails {
//   String? name;
//   Color? col;
//   String? number;
//   MYDetails({this.col, this.number, this.name});
// }

// class MYRoll {
//   static List details = <MYDetails>[
//     MYDetails(
//       name: AddContact.nameofUser.text,
//       //col: AddContact.col,
//       number: AddContact.contactofUser.text,
//     ),
//   ];
// }
