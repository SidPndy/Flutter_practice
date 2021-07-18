import 'package:flutter/material.dart';

import 'LoginPage.dart';
import 'addContact.dart';

class MyModel extends ChangeNotifier {
  var name = MyBox.user;
  var nam = AddContact.nameofUser;
  var number = AddContact.contactofUser;

  onClickSave(usernam, contc) {
    nam = usernam;
    number = contc;
    if (nam == null || number == null) {
      return null;
    } else {
      AddContact.userList.add(usernam);
    }

    notifyListeners();
  }

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
