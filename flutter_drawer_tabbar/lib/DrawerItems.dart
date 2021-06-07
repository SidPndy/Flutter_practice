import 'package:flutter/material.dart';
import 'package:flutter_drawer_tabbar/DrawerVideo.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'DrawerHome.dart';
import 'DrawerVideo.dart';

class RealDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Siddhartha Pandey'),
              accountEmail: Text('Siddharthapandey364@gmail.com'),
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/Pic.PNG'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                return Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return DrawerHome();
                }));
              },
            ),
            Divider(
              color: Colors.grey,
              height: 10,
            ),
            ListTile(
              leading: Icon(Icons.album),
              title: Text('Videos'),
              onTap: () {
                return Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return DrawerVideos();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {},
            ),
          ],
        ),
      );
    });
  }
}

// myToast() {
//   Fluttertoast.showToast(
//     msg: 'This is Home',
//     gravity: ToastGravity.CENTER,
//     timeInSecForIosWeb: 2,
//     backgroundColor: Colors.black87,
//     toastLength: Toast.LENGTH_SHORT,
//   );
// }
