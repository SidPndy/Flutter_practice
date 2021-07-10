import 'package:flutter/material.dart';
import 'package:learning_ui_and_provider/LoginPage.dart';

import 'addContact.dart';

class MyModel extends ChangeNotifier {
  var name = MyBox.user;

  onclklgn(nam) {
    name = nam;
    notifyListeners();
  }
}

class AddItemModel extends ChangeNotifier {
  var modelClass = AddContact();

  var itemCol = AddContact.col;
  var contactName = AddContact.nameofUser;
  var contactNum = AddContact.contactofUser;
  //var listofcontact = AddContact.userList;

  onClickColor(Color itemColor) {
    itemCol = itemColor;
    notifyListeners();
  }

  onClickSavenam(nam) {
    contactName = nam;
    notifyListeners();
  }

  onClickSavenum(number) {
    contactNum = number;
    notifyListeners();
  }

  additemonsave(value) {
    AddContact.userList.add(onClickSavenam(contactName));
    // contactName.clear();
    // contactNum.clear();
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
