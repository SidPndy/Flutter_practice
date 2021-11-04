import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:learning_ui_and_provider/CustomePainter.dart';
import 'package:provider/provider.dart';
import 'LoginPage.dart';
import 'myModel.dart';
import 'addContact.dart';
import 'Favourite.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.light,
    statusBarColor: Colors.black38,
    //systemNavigationBarDividerColor: Colors.purple,
  ));
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<MyModel>(
          create: (context) => MyModel(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => Login(),
          '/home': (context) => MyApp(),
          '/customPainterPage': (context) => MyCustomPainterPage(),
        },
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  static int index = 0;
  static List navigatonTabs = [
    AddedItemList(),
    Items(),
    Favourite(),
  ];

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Flutter'),
      //   backgroundColor: Colors.green[900],
      //   elevation: 0,
      // ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            MyApp.index = index;
          });
        },
        unselectedItemColor: Colors.white38,
        currentIndex: MyApp.index,
        backgroundColor: Colors.green.shade900,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_phone), label: 'My Contacts'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add Contact'),
          BottomNavigationBarItem(
              icon: Icon(Icons.call), label: 'Recent Calls'),
        ],
      ),
      body: Home(),
    );
  }
}

class AddedItemList extends StatefulWidget {
  static List<String> favouriteName = [];
  static List<String> favouriteNumber = [];

  @override
  _AddedItemListState createState() => _AddedItemListState();
}

class _AddedItemListState extends State<AddedItemList> {
  // // @override
  // // void initState() {
  // //   // TODO: implement initState
  // //   super.initState();
  // //   getMyPref();
  // // }
  Color col = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: AddContact.name.length,
      itemBuilder: (BuildContext context, int index) {
        return Slidable(
          actionPane: SlidableDrawerActionPane(),
          actions: [
            IconSlideAction(
              caption: "Favorite",
              icon: Icons.favorite,
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Item Added to favourite!")));
                setState(() {
                  AddedItemList.favouriteName.insert(0, AddContact.name[index]);
                  AddedItemList.favouriteNumber
                      .insert(0, AddContact.number[index]);
                });
              },
            ),
            IconSlideAction(
              key: ValueKey(AddContact.name[index]),
              caption: "Remove",
              icon: Icons.delete,
              onTap: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text("Item deleted!")));
                setState(() {
                  //
                });
              },
            ),
          ],
          child: ListTile(
            onTap: () {},
            leading: CircleAvatar(
              backgroundColor:
                  Colors.primaries[Random().nextInt(Colors.primaries.length)],
              child: Text(
                AddContact.name[index].substring(0, 1).toUpperCase(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            title: Text(AddContact.name[index]),
            subtitle: Text(AddContact.number[index]),
          ),
        );
      },
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //  int counter = 0;

  // onclk() {
  //   setState(() {
  //     userList.add('Name $counter');
  //     counter++;
  //   });
  // }
  // List<Widget> addContactWidget = [];

  // items(BuildContext context) {
  //   return Consumer<MyModel>(
  //     builder: (context, value, child) => ListView.builder(
  //       itemCount: AddContact.userList.length,
  //       itemBuilder: (context, index) {
  //         return Card(
  //           child: Consumer<MyModel>(
  //             builder: (context, value, child) => ListTile(
  //               onTap: () {},
  //               leading: Text(value.nam.text),
  //               subtitle: Text(value.number.text),
  //             ),
  //           ),
  //         );
  //       },
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            color: Colors.green[900],
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 140, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Consumer<MyModel>(
                        builder: (context, value, child) => CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Text(
                            value.name.text.substring(0, 1),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 13),
                      Consumer<MyModel>(
                        builder: (context, value, child) => Text(
                          value.name.text,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 13),
                      InkWell(
                        child: Icon(
                          Icons.format_paint,
                          color: Colors.amber,
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/customPainterPage');
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
          Positioned(
            top: 200,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
            ),
          ),
          Positioned(
            top: 205,
            left: 30,
            right: 30,
            child: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height / 1.5,
                width: MediaQuery.of(context).size.width / 1.2,
                child: MyApp.navigatonTabs[MyApp.index],
              ),
            ),
          ),
          // Positioned(
          //   bottom: 15,
          //   right: 8,
          //   child: FloatingActionButton(
          //     backgroundColor: Colors.blue[900],
          //     onPressed: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (_) => Items(),
          //         ),
          //       );
          //     },
          //     child: Icon(Icons.add),
          //   ),
          // ),
        ],
      ),
    );
  }
}
