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

  // final RainbowContainer dataWindow = new RainbowContainer();
  int nr = 15;

  int getNrData() {
    return nr;
  }

  void setNrData(int input) {
    setState(() {
      nr = input;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        centerTitle: false,
      ),
      body: Container(
          // TO DO shuld be same padding as the Rainbow sorter header
          padding: EdgeInsets.all(10),
          height: size.height,
          width: size.width,
          child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DataEntryBar(setNrData),
                RainbowContainer(getNrData),
              ])),
    );
  }
}
