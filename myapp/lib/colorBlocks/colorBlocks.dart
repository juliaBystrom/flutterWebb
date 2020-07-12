// import './colorBlockStateless.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'block.dart';

class ColorBlocks {
  List<Block> colorBlocks;
  int nrOfBlocks;
  Random rnd = new Random();
  int input;

  ColorBlocks() {
    // Starting with 10 color blocks
    nrOfBlocks = 10;
    generateColorBlocks(10);
  }

  List<Block> getListOfColorBlocks() {
    print("nrOfBlocks: " + nrOfBlocks.toString());
    return colorBlocks;
  }

  
  void sortColorBlocks(){
    // Insertion sort
    int lengthOfCB = colorBlocks.length;

    int indexSelected;
    Block blockSelected;

    for(int i = 1; i < lengthOfCB; i++){
      blockSelected = colorBlocks[i];
      indexSelected = i;
      while(indexSelected > 0 && (colorBlocks[indexSelected-1].getColorint() > blockSelected.getColorint())){
        colorBlocks[indexSelected] = colorBlocks[indexSelected-1];
        indexSelected--;
      }

      colorBlocks[indexSelected] = blockSelected;
    }
    print("Sorted an insertion sort");
  }


  void generateColorBlocks(int nrOfBlocks) {
    List<Block> cB = new List(nrOfBlocks);

    for (int i = 0; i < nrOfBlocks; i++) {
      // This double will be used to specefie the colour of the block
      // in a HSV format where the number will represent the hue which will range from 0 that is red and to 300 that is purple.
      // red blocks will be given a smaler height than purple ones.
      double color = rnd.nextInt(300).toDouble();
      // heightF will be 0,3 + number ranging from 0,0 to 0,5 depending on color.
      double heightF = (0.3 + (1 / 600) * color);
      print("heigh F is: " + heightF.toString());
      cB[i] = new Block(heightF,color);
    }

    colorBlocks = cB;
  }



  
}
