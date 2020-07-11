// import './colorBlockStateless.dart';
import 'dart:math';
import 'package:flutter/material.dart';

class ColorBlocks {
  List<Flexible> colorBlocks;
  int nrOfBlocks;
  Random rnd = new Random();

  ColorBlocks() {
    // Starting with 10 color blocks
    nrOfBlocks = 10;
    generateColorBlocks(10);
  }

  void generateColorBlocks(int nrOfBlocks) {
    // colorBlocks = new List(nrOfBlocks);
    List<Flexible> cB = new List(nrOfBlocks);

    for (int i = 0; i < nrOfBlocks; i++) {
      // This double will be used to specefie the colour of the block
      // in a HSV format where the number will represent the hue which will range from 0 that is red and to 300 that is purple.
      // red blocks will be given a smaler height than purple ones.
      double color = rnd.nextInt(300).toDouble();
      // heightF will be 0,3 + number ranging from 0,0 to 0,5 depending on color.
      double heightF = (0.3 + (1 / 600) * color);
      print("heigh F is: " + heightF.toString());
      // double heightF = (0.3 + (120/color))*(size.height/20);
      // cB[i] = new ColorBlock(heightF,color);
      cB[i] = new Flexible(
        flex: 1,
        fit: FlexFit.tight,
        child: FractionallySizedBox(
          heightFactor: heightF,
          child: Container(
            // height: heightF * 200,
            color: HSVColor.fromAHSV(1.0, color, 1.0, 0.5).toColor(),
          ),
        ),
      );
    }

    colorBlocks = cB;
  }



  List<Flexible> getListOfColorBlocks() {
    print("nrOfBlocks: " + nrOfBlocks.toString());
    return colorBlocks;
  }
}
