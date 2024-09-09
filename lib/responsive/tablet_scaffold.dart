import 'package:dashboard_well_example/constants.dart';
import 'package:flutter/material.dart';

import '../util/my_box.dart';
import '../util/my_tile.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      appBar: myAppBar,
      drawer: myDrawer,
      body: Column(
        children: [
          //4 box on the top

          //pour le responsive très important widget
          //width/height
          AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
              //need to be constrained
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  //2 in each row
                  crossAxisCount: 4,
                ),
                itemBuilder: (context, index) {
                  return const MyBox();
                },
              ),
            ),
          ),
          //listile below it
          Expanded(
              child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return const MyTile();
            },
          ))
        ],
      ),
    );
  }
}
