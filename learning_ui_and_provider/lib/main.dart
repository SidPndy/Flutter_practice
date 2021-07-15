import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'LoginPage.dart';
import 'myModel.dart';
import 'addContact.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<MyModel>(
          create: (context) => MyModel(),
        ),
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => Login(),
          '/home': (context) => MyApp(),
        },
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  static List userList = [];

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static int _index = 0;
  static List navigatonTabs = [
    AddedItemList(),
    Items(),
    Align(
      child: Text('Comming soon............ '),
      alignment: Alignment.center,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
        backgroundColor: Colors.blue[900],
        elevation: 0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        unselectedItemColor: Colors.white38,
        currentIndex: _index,
        backgroundColor: Colors.blue.shade900,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_phone), label: 'My Contacts'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline), label: 'Favourite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.call), label: 'Recent Calls'),
        ],
      ),
      body: Home(),
    );
  }
}

class AddedItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MyModel>(
      builder: (context, value, child) => ListView.builder(
        itemCount: AddContact.userList.length,
        itemBuilder: (context, index) {
          return Card(
            child: Consumer<MyModel>(
              builder: (context, value, child) => ListTile(
                onTap: () {},
                leading: Text(value.nam.text),
                subtitle: Text(value.number.text),
              ),
            ),
          );
        },
      ),
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
            height: MediaQuery.of(context).size.height / 5,
            color: Colors.blue[900],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Consumer<MyModel>(
                      builder: (context, value, child) => CircleAvatar(
                        child: Text(value.name.text.substring(0, 1)),
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
                  ],
                ),
                Divider(
                  height: 20,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          Positioned(
            top: 110,
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
            top: 120,
            left: 30,
            right: 30,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width / 1.2,
              child: _MyAppState.navigatonTabs[_MyAppState._index],
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
