import 'dart:math';
import 'package:flutter/material.dart';
import 'block.dart';

class ColorBlocks {
  List<Block> colorBlocks;
  int nrOfBlocks;
  Random rnd = new Random();
  Block blockSelectedSbS;

  ColorBlocks() {
    // Starting with 10 color blocks
    nrOfBlocks = 10;
    generateColorBlocks(10);
  }

  List<Block> getListOfColorBlocks() {
    print("nrOfBlocks: " + nrOfBlocks.toString());
    return colorBlocks;
  }

  // Unsorted -> Sorted
  // No subarrays displayed.
  void sortColorBlocks() {
    // Insertion sort

    // Will be null when compiling causing warning, could be fixed by initilizing a length for the array.
    int lengthOfCB = colorBlocks.length;

    int indexSelected;
    Block blockSelected;

    for (int i = 1; i < lengthOfCB; i++) {
      blockSelected = colorBlocks[i];
      indexSelected = i;
      while (indexSelected > 0 &&
          (colorBlocks[indexSelected - 1].getColorint() >
              blockSelected.getColorint())) {
        colorBlocks[indexSelected] = colorBlocks[indexSelected - 1];
        indexSelected--;
      }

      colorBlocks[indexSelected] = blockSelected;
    }
    print("Sorted an insertion sort");
  }

  // Insertion sort but one step. Will return 1 when finnish, 0 when unfinnish.
  int sortColorBlocksStepByStep(int i) {
    // Insertion sort 1 block sorted
    Block blockSelected;
    if (i < nrOfBlocks) {
      int indexSelected = i;
      blockSelected = colorBlocks[indexSelected];
      while (indexSelected > 0 &&
          (colorBlocks[indexSelected - 1].getColorint() >
              blockSelected.getColorint())) {
        colorBlocks[indexSelected] = colorBlocks[indexSelected - 1];
        indexSelected--;
        // Swap of elements finnish
      }
      colorBlocks[indexSelected] = blockSelected;
      // Subbaray 0:i now sorted
      return 0;
    } else {
      // The list is now fully sorted
      return 1;
    }
  }

  int sortColorBlocksSwapBySwap(int index, int i) {
    if (i > nrOfBlocks) {
      // The list is now fully sorted
      return 2;
    }
    
    if (index == 0) {
      colorBlocks[index] = blockSelectedSbS;
      if (i + 1 < nrOfBlocks) {
        blockSelectedSbS = colorBlocks[i + 1];
      }
      return 1;
    } else if (colorBlocks[index - 1].getColorint() <=
        blockSelectedSbS.getColorint()) {
      colorBlocks[index] = blockSelectedSbS;
      if (i + 1 < nrOfBlocks) {
        blockSelectedSbS = colorBlocks[i + 1];
      }
      return 1;
    } else if (index < 0) {
      // Error!
      print("Error index less than 0 in colorBlocks sort swap by swap");
      return 2;
    } else {
      print("if statement excecuted with VL and HL: ");
      print(colorBlocks[index - 1].getColorint().toString());
      print(blockSelectedSbS.getColorint().toString());
      colorBlocks[index] = colorBlocks[index - 1];
      return 0;
    }

    // blockSelected = colorBlocksCopy[i];

    /* print("Should return 1");
      // Now the subarray 0:i is sorted, and i need to be increased.

      // Insert the block in the avalible spot.
      colorBlocks[index] = blockSelectedSbS;
      if (i + 1 < nrOfBlocks) {
        blockSelectedSbS = colorBlocks[i + 1];
        return 1;
      } else {
        // Return 2 could be implemented here instead of down below
        print("time for return 2 hm");
        return 1;
      } */
  }

  void generateColorBlocks(int amount) {
    List<Block> cB = new List(amount);
    nrOfBlocks = amount;

    for (int i = 0; i < amount; i++) {
      // This double will be used to specefie the colour of the block
      // in a HSV format where the number will represent the hue which will range from 0 that is red and to 300 that is purple.
      // red blocks will be given a smaler height than purple ones.
      double color = rnd.nextInt(300).toDouble();
      // heightF will be 0,3 + number ranging from 0,0 to 0,5 depending on color.
      double heightF = (0.3 + (1 / 600) * color);
      // print("heigh F is: " + heightF.toString());
      cB[i] = new Block(heightF, color);
    }
    colorBlocks = cB;
    blockSelectedSbS = colorBlocks[1];
  }
}
