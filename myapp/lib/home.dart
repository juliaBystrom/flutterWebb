import 'package:flutter/material.dart';
import './dataEntryBar.dart';
import './dataEntryContainer.dart';

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
        padding: EdgeInsets.all(10),
        height: size.height,
        width: size.width,
        
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DataEntryBar(),
            //RainbowContainer(),
            DataEntryContainer(size),
          ]
        )
      ),

    );
  }
}
