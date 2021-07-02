import 'package:flutter/material.dart';
import 'package:learning_ui_and_provider/ItemLists.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Flutter')),
        backgroundColor: Colors.blue[900],
        elevation: 0,
      ),
      body: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final user = 'Siddhartha Pandey';
  final List userList = [];
  //  int counter = 0;

  // onclk() {
  //   setState(() {
  //     userList.add('Name $counter');
  //     counter++;
  //   });
  // }

  items(BuildContext context) {
    return ListView.builder(
        itemCount: userList.length,
        itemBuilder: (context, index) {
          return Card(
            key: ValueKey(userList),
            child: ListTile(
              leading: Text(userList[index]),
            ),
          );
        });
  }

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
                    CircleAvatar(
                      child: Text(user.substring(0, 1)),
                    ),
                    SizedBox(width: 13),
                    Text(
                      user,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white,
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
              child: items(context),
            ),
          ),
          Positioned(
            bottom: 15,
            right: 8,
            child: FloatingActionButton(
              backgroundColor: Colors.blue[900],
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Items())),
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
