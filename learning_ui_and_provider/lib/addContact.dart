import 'package:flutter/material.dart';
import 'package:learning_ui_and_provider/myModel.dart';
import 'package:provider/provider.dart';

class Items extends StatefulWidget {
  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Item'),
      ),
      body: AddContact(),
    );
  }
}

// class AddContact extends StatefulWidget {
//   @override
//   _AddContactState createState() => _AddContactState();
// }

// class _AddContactState extends State<AddContact> {
//   static var nameofUser = TextEditingController();
//   static var contactofUser = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }

class AddContact extends StatelessWidget {
  static var nameofUser = TextEditingController();
  static var contactofUser = TextEditingController();
  static Color? col;
  static List userList = [];

  set numbersetter(numbr) {
    contactofUser = numbr;
  }

  get numbersetter {
    return contactofUser;
  }

  set namesetter(nam) {
    nameofUser = nam;
  }

  get namesetter {
    return nameofUser;
  }

  List get listofusers {
    return userList;
  }

  set listofusers(List listofusr) {
    userList = listofusr;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text(
            //  'Name',
            //   style: TextStyle(
            //     fontSize: 20,
            //     color: Colors.grey,
            //   ),
            // ),
            TextFormField(
              controller: nameofUser,
              maxLength: 20,
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                focusColor: Colors.purple,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue.shade900),
                ),
                hintText: 'Example: Ujjwal Bhandari',
              ),
            ),
            // Text(
            //   'Contact',
            //   style: TextStyle(
            //     fontSize: 20,
            //     color: Colors.grey,
            //   ),
            // ),
            TextFormField(
              //maxLength: 20,
              controller: contactofUser,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                icon: Icon(Icons.phone),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue.shade900),
                ),
                hintText: 'Example: 9812345678',
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    highlightColor: Colors.grey,
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Colour set to yellow')));
                    },
                    child: Card(
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    highlightColor: Colors.grey,
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Colour set to blue')));
                    },
                    child: Card(
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    highlightColor: Colors.grey,
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Colour set to red')));
                    },
                    child: Card(
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    highlightColor: Colors.grey,
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Colour set to purple')));
                    },
                    child: Card(
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Colour set to cyan')));
                    },
                    highlightColor: Colors.grey,
                    child: Card(
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.cyan,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('Colour set to navy'),
                          duration: Duration(seconds: 2),
                        ));
                      },
                      //splashColor: Colors.white,
                      highlightColor: Colors.grey,
                      child: Card(
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.blue[900],
                          ),
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(height: 50),
            Center(
              child: Consumer<AddItemModel>(
                builder: (context, value, child) => ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    value.onClickSavenam(value.contactName);
                    value.onClickSavenum(value.contactNum);
                    value.additemonsave(value);
                  },
                  child: Text('Save'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
