import 'package:flutter/material.dart';
import 'package:flutter_drawer_tabbar/DrawerItems.dart';

class GridItems {
  final String name;
  final IconData icun;

  const GridItems({this.name, this.icun});
}

class VideosGrid extends StatelessWidget {
  final List<GridItems> itemNames = <GridItems>[
    GridItems(name: 'Blast', icun: Icons.fireplace),
    GridItems(name: 'Ocean', icun: Icons.waves),
    GridItems(name: 'School', icun: Icons.book),
    GridItems(name: 'Nation', icun: Icons.flag),
    GridItems(name: 'Bank', icun: Icons.money),
    GridItems(name: 'No Smoke', icun: Icons.smoke_free),
    GridItems(name: 'Boundry', icun: Icons.border_all),
    GridItems(name: 'Flutter', icun: Icons.flutter_dash),
    GridItems(name: 'Save', icun: Icons.save),
    GridItems(name: 'No Smoke', icun: Icons.smoke_free),
    GridItems(name: 'Nation', icun: Icons.flag),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: itemNames.map((e) {
          return Card(
            elevation: 10,
            color: Colors.cyan,
            child: GridTile(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(e.icun),
                  Text(e.name),
                ],
              ),
            ),
          );
        }).toList());
  }
}

class DrawerVideos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Videos'),
        // leading: Icon(Icons.play_arrow),
      ),
      body: VideosGrid(),
      drawer: RealDrawer(),
    );
  }
}
