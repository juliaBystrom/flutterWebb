import 'package:flutter/material.dart';
import './colorBlocks.dart';

class RainbowContainer extends StatefulWidget {
  // int dataEntrys;
  // RainbowContainer(this.dataEntrys);
  Function getNrofDataEntrys;
  RainbowContainer(this.getNrofDataEntrys);

  @override
  RainbowContainerState createState() {
    return RainbowContainerState(getNrofDataEntrys);
  }

}

class RainbowContainerState extends State<RainbowContainer> {
  Function getNrofDataEntrys;
  RainbowContainerState(this.getNrofDataEntrys);
  ColorBlocks cblocks = new ColorBlocks();
  List<Flexible> listOfColorBlocks; 
  // cblocks.generateColorBlocks(dataEntrys);

  // = cblocks.getListOfColorBlocks();

  /*void generateDataEntrys(int nrOfDataEntrys) {
    setState(() {
      cblocks.generateColorBlocks(nrOfDataEntrys);
    });
  }*/

  @override
  Widget build(BuildContext context) {
    int nrD = getNrofDataEntrys();
    cblocks.generateColorBlocks(nrD);
    
    print("bygger RainbowContainerState ");
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
