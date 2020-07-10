import 'package:flutter/material.dart';
import './colorBlocks.dart';

class DataEntryContainerTest extends StatefulWidget {
  @override
  _DataEntryContainerTestState createState() {
    return _DataEntryContainerTestState();
  }
}

class _DataEntryContainerTestState extends State<DataEntryContainerTest> {
  ColorBlocks cblocks = new ColorBlocks();
  List<Flexible> listOfColorBlocks; 
  // = cblocks.getListOfColorBlocks();

  @override
  Widget build(BuildContext context) {
    print("bygger DataEntryContainerTestState ");
    // Might wanna change the 1,5 to an higher number, but less than two, so that buttons for sorting fit
    double heightMediaQ = MediaQuery.of(context).size.height/1.5;
    listOfColorBlocks = cblocks.getListOfColorBlocks();

    return Container(
      height: heightMediaQ,
      decoration:
          BoxDecoration(border: Border.all(color: Colors.green, width: 5)),
      child: Container(
        // fit: BoxFit.fill,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: listOfColorBlocks,
        ),
      ),
    );
  }
}
