import 'package:flutter/material.dart';

import '../constants.dart';
import '../util/my_box.dart';
import '../util/my_tile.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      drawer: myDrawer,
      body: Column(
        children: [
          //4 box on the top

          //pour le responsive très important widget
          //width/height
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              //need to be constrained
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  //2 in each row
                  crossAxisCount: 2,
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
