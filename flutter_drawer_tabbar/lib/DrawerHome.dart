import 'package:flutter/material.dart';
import 'package:flutter_drawer_tabbar/DrawerItems.dart';

class DrawerHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.cyan,
            title: Text('HomeFromDrawer'),
          ),
          body: MyGrid(),
          drawer: RealDrawer(),
        );
      }),
    );
  }
}

// class GridItems {
//   final String name;
//   final IconData myIcon;
//   const GridItems({this.name, this.myIcon});
// }

// final List<GridItems> itemName = <GridItems>[
//   GridItems(name: 'Food', myIcon: Icons.food_bank),
//   GridItems(name: 'Hotel', myIcon: Icons.hotel),
//   GridItems(name: 'Land', myIcon: Icons.landscape),
//   GridItems(name: 'Ocean', myIcon: Icons.waves),
//   GridItems(name: 'Headquater', myIcon: Icons.center_focus_strong),
//   GridItems(name: 'Nation', myIcon: Icons.flag),
//   GridItems(name: 'keyBoard', myIcon: Icons.keyboard),
//   GridItems(name: 'Human', myIcon: Icons.face),
// ];

// class MyGrid extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GridView.count(
//       crossAxisCount: 3,
//       children: itemName.map((e) {
//         return Card(
//           child: GridTile(
//             child: Padding(
//               padding: EdgeInsets.only(top: 40),
//               child: Column(
//                 children: [Icon(e.myIcon), Text(e.name)],
//               ),
//             ),
//           ),
//         );
//       }).toList(),
//     );
//   }
// }

class MyGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
      children: [
        GridTile(
          child: Container(
            child: Image.network(
                'https://image.shutterstock.com/image-photo/crystal-ball-display-clear-water-600w-742387474.jpg'),
          ),
        ),
        GridTile(
          child: Container(
            child: Image.network(
                'https://image.shutterstock.com/image-photo/crystal-ball-display-clear-water-600w-742387474.jpg'),
          ),
        ),
        GridTile(
          child: Container(
            child: Image.network(
                'https://image.shutterstock.com/image-photo/crystal-ball-display-clear-water-600w-742387474.jpg'),
          ),
        ),
        GridTile(
          child: Container(
            child: Image.network(
                'https://image.shutterstock.com/image-photo/crystal-ball-display-clear-water-600w-742387474.jpg'),
          ),
        ),
        GridTile(
          child: Container(
            child: Image.network(
                'https://image.shutterstock.com/image-photo/crystal-ball-display-clear-water-600w-742387474.jpg'),
          ),
        ),
        GridTile(
          child: Container(
            child: Image.network(
                'https://image.shutterstock.com/image-photo/crystal-ball-display-clear-water-600w-742387474.jpg'),
          ),
        ),
        GridTile(
          child: Container(
            child: Image.network(
                'https://image.shutterstock.com/image-photo/crystal-ball-display-clear-water-600w-742387474.jpg'),
          ),
        ),
        GridTile(
          child: Container(
            child: Image.network(
                'https://image.shutterstock.com/image-photo/crystal-ball-display-clear-water-600w-742387474.jpg'),
          ),
        ),
        GridTile(
          child: Container(
            child: Image.network(
                'https://image.shutterstock.com/image-photo/crystal-ball-display-clear-water-600w-742387474.jpg'),
          ),
        ),
        GridTile(
          child: Container(
            child: Image.network(
                'https://image.shutterstock.com/image-photo/crystal-ball-display-clear-water-600w-742387474.jpg'),
          ),
        ),
        GridTile(
          child: Container(
            child: Image.network(
                'https://image.shutterstock.com/image-photo/crystal-ball-display-clear-water-600w-742387474.jpg'),
          ),
        ),
      ],
    );
  }
}
