import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'main.dart';
=======
>>>>>>> d7d9cf88935d7d78f7fe07d186c8663ea8f8aba2

class Items extends StatefulWidget {
  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Add Item'),
      // ),
      backgroundColor: Colors.white,
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

// class Contacts {
//   String? name;
//   String? number;
//   Contacts({this.name, this.number});
// }

class AddContact extends StatefulWidget {
  static String nameofUser = '';
  static String contactofUser = '';
<<<<<<< HEAD
  static final List<String> name = <String>[];
  static final List<String> number = <String>[];
=======
  static List<String> name = <String>[];
  static List<String> number = <String>[];
>>>>>>> d7d9cf88935d7d78f7fe07d186c8663ea8f8aba2

  @override
  _AddContactState createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  GlobalKey<FormState> _myFormKey = GlobalKey<FormState>();
<<<<<<< HEAD

  getFormData() {
    AddContact.name.insert(0, AddContact.nameofUser);
    AddContact.number.insert(0, AddContact.contactofUser);
  }

  onFormSave() {
    if (_myFormKey.currentState!.validate()) {
      if (AddContact.name.contains(AddContact.nameofUser)) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content:
                Text('Contact for ${AddContact.nameofUser} already exists!')));
        return null;
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Contact added!')));

        return getFormData();
      }
    }
  }
=======
  bool? oncePressed;
>>>>>>> d7d9cf88935d7d78f7fe07d186c8663ea8f8aba2

  // set numbersetter(numbr) {
  //   AddContact.contactofUser = numbr;
  // }

  // get numbersetter {
  //   return AddContact.contactofUser;
  // }

  // set namesetter(nam) {
  //   AddContact.nameofUser = nam;
  // }

  // get namesetter {
  //   return AddContact.nameofUser;
  // }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _myFormKey,
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
              maxLength: 20,
              onChanged: (a) {
                AddContact.nameofUser = a;
              },
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                focusColor: Colors.purple,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue.shade900),
                ),
                hintText: 'Example: Ujjwal Bhandari',
              ),
<<<<<<< HEAD
              textInputAction: TextInputAction.next,
              validator: (value) {
                if (value!.isEmpty) {
                  return '*Please Enter name';
=======
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please Enter name';
>>>>>>> d7d9cf88935d7d78f7fe07d186c8663ea8f8aba2
                } else
                  return null;
              },
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

              keyboardType: TextInputType.number,
              onChanged: (a) {
                AddContact.contactofUser = a;
              },
<<<<<<< HEAD
              // onFieldSubmitted: (nameofUser) => onFormSave(),

=======
>>>>>>> d7d9cf88935d7d78f7fe07d186c8663ea8f8aba2
              decoration: InputDecoration(
                icon: Icon(Icons.phone),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue.shade900),
                ),
                hintText: 'Example: 9812345678',
              ),
              validator: (value) {
                if (value!.isEmpty)
<<<<<<< HEAD
                  return '*Please enter number';
=======
                  return 'Please enter number';
>>>>>>> d7d9cf88935d7d78f7fe07d186c8663ea8f8aba2
                else
                  return null;
              },
            ),
            SizedBox(height: 30),
<<<<<<< HEAD
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceAround,
            //     children: [
            //       InkWell(
            //         highlightColor: Colors.grey,
            //         onTap: () {
            //           ScaffoldMessenger.of(context).showSnackBar(
            //               SnackBar(content: Text('Colour set to yellow')));
            //         },
            //         child: Card(
            //           child: Container(
            //             height: 20,
            //             width: 20,
            //             decoration: BoxDecoration(
            //               color: Colors.amber,
            //             ),
            //           ),
            //         ),
            //       ),
            //       InkWell(
            //         highlightColor: Colors.grey,
            //         onTap: () {
            //           ScaffoldMessenger.of(context).showSnackBar(
            //               SnackBar(content: Text('Colour set to blue')));
            //         },
            //         child: Card(
            //           child: Container(
            //             height: 20,
            //             width: 20,
            //             decoration: BoxDecoration(
            //               color: Colors.blue,
            //             ),
            //           ),
            //         ),
            //       ),
            //       InkWell(
            //         highlightColor: Colors.grey,
            //         onTap: () {
            //           //AddContact.col.insert(0, Colors.red);
            //           ScaffoldMessenger.of(context).showSnackBar(
            //               SnackBar(content: Text('Colour set to red')));
            //         },
            //         child: Card(
            //           child: Container(
            //             height: 20,
            //             width: 20,
            //             decoration: BoxDecoration(
            //               color: Colors.red,
            //             ),
            //           ),
            //         ),
            //       ),
            //       InkWell(
            //         highlightColor: Colors.grey,
            //         onTap: () {
            //           ScaffoldMessenger.of(context).showSnackBar(
            //               SnackBar(content: Text('Colour set to purple')));
            //         },
            //         child: Card(
            //           child: Container(
            //             height: 20,
            //             width: 20,
            //             decoration: BoxDecoration(
            //               color: Colors.purple,
            //             ),
            //           ),
            //         ),
            //       ),
            //       InkWell(
            //         onTap: () {
            //           ScaffoldMessenger.of(context).showSnackBar(
            //               SnackBar(content: Text('Colour set to cyan')));
            //         },
            //         highlightColor: Colors.grey,
            //         child: Card(
            //           child: Container(
            //             height: 20,
            //             width: 20,
            //             decoration: BoxDecoration(
            //               color: Colors.cyan,
            //             ),
            //           ),
            //         ),
            //       ),
            //       InkWell(
            //           onTap: () {
            //             ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            //               content: Text('Colour set to navy'),
            //               duration: Duration(seconds: 2),
            //             ));
            //           },
            //           //splashColor: Colors.white,
            //           highlightColor: Colors.grey,
            //           child: Card(
            //             child: Container(
            //               height: 20,
            //               width: 20,
            //               decoration: BoxDecoration(
            //                 color: Colors.blue[900],
            //               ),
            //             ),
            //           )),
            //     ],
            //   ),
            // ),
            //SizedBox(height: 50),
=======
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    highlightColor: Colors.grey,
                    onTap: () {
                      this.oncePressed = true;
                      if (this.oncePressed == false)
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
>>>>>>> d7d9cf88935d7d78f7fe07d186c8663ea8f8aba2
            Center(
              child: RaisedButton(
                color: Colors.green.shade900,
                child: Text(
                  'Save',
                  style: TextStyle(color: Colors.white),
                ),
<<<<<<< HEAD
                onPressed: () => onFormSave(),
=======
                onPressed: () {
                  if (_myFormKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Contact added!')));
                    return getFormData();
                  } else {
                    return null;
                  }
                },
>>>>>>> d7d9cf88935d7d78f7fe07d186c8663ea8f8aba2
              ),
            ),
          ],
        ),
      ),
    );
  }
}
<<<<<<< HEAD
=======

getFormData() {
  AddContact.name.insert(0, AddContact.nameofUser);
  AddContact.number.insert(0, AddContact.contactofUser);
}
>>>>>>> d7d9cf88935d7d78f7fe07d186c8663ea8f8aba2
