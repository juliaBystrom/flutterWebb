import 'package:flutter/material.dart';
import './dataEntryBar.dart';
import './rainbowContainer.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {

  static const String _title = "Rainbow Sorter";


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(

        title: Text(_title),
        centerTitle: false,

        /* actions: [
          IconButton(
            icon: Icon(
              Icons.sort,
              color: Colors.pinkAccent,
            ),
            onPressed: () {
              setState(() {
                // _volume += 10;
              });
            },
          ),
        ], */
       
      ),
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            DataEntryBar(),
            // RainbowContainer(),
          ]
        )
      ),

    );
  }
}
