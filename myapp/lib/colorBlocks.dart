import './colorBlockStateless.dart';
import 'dart:math';
import 'package:flutter/material.dart';

class ColorBlocks {
  List<ColorBlock> colorBlocks;
  int nrOfBlocks;
  Random rnd = new Random();
  Size size;


  ColorBlocks(Size size) {
    // Starting with 10 color blocks
    this.size = size;
    nrOfBlocks = 10;
    generateColorBlocks(10);
  }

  void generateColorBlocks(int nrOfBlocks) {
    colorBlocks = new List(nrOfBlocks);
    for(int i = 0; i < nrOfBlocks; i++){
      // This double will be used to specefie the colour of the block 
      // in a HSV format where the number will represent the hue which will range from 0 that is red and to 300 that is purple.
      // red blocks will be given a smaler height than purple ones.
      double color = rnd.nextInt(300).toDouble();
      double heightF = (0.4 + (120/color))*(size.height/20);
      colorBlocks[i] = new ColorBlock(0.3,heightF,color);
    }

  }

  List<ColorBlock> getListOfColorBlocks(){
    return colorBlocks;
  }
}
