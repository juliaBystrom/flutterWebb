import 'package:flutter/material.dart';
import './colorBlocks/colorBlocks.dart';
import './sorterButtonContainer.dart';

class RainbowContainer extends StatefulWidget {
  // int dataEntrys;
  // RainbowContainer(this.dataEntrys);
  ColorBlocks colorBlocksHandler;
  RainbowContainer(this.colorBlocksHandler);

  @override
  RainbowContainerState createState() {
    return RainbowContainerState(colorBlocksHandler);
  }
}

class RainbowContainerState extends State<RainbowContainer> {
  ColorBlocks colorBlocksHandler;
  RainbowContainerState(this.colorBlocksHandler);
  List<dynamic> listOfColorBlocks;


  void sortRainbow() {
    setState(() {
      colorBlocksHandler.sortColorBlocks();
    });
  }

  int sortRainbowStepByStep(int i) {
    int flag;
    setState(() {
      flag = colorBlocksHandler.sortColorBlocksStepByStep(i);
    });
    return flag;
  }
  int sortRainbowSwapBySwap(int index, int i) {
    int flag;
    setState(() {
      flag = colorBlocksHandler.sortColorBlocksSwapBySwap(index, i);
    });
    return flag;
  }

  @override
  Widget build(BuildContext context) {
    print("bygger RainbowContainerState ");
    // Might wanna change the 1,5 to an higher number, but less than two, so that buttons for sorting fit
    double heightMediaQ = MediaQuery.of(context).size.height / 1.75;
    listOfColorBlocks = colorBlocksHandler.getListOfColorBlocks();

    return Column(
      children: [
        Container(
          height: heightMediaQ,
          decoration:
              BoxDecoration(border: Border.all(color: Colors.deepPurple, width: 5)),
          child: Container(
            // fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: listOfColorBlocks,
            ),
          ),
        ),
        SorterButtonContainer(sortRainbow, sortRainbowStepByStep, sortRainbowSwapBySwap),
      ],
    );
  }
}
