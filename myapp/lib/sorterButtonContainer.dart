import 'package:flutter/material.dart';
import 'dart:async';

class SorterButtonContainer extends StatelessWidget {
  Function insertionSort;
  Function insertionSortOneStep;
  SorterButtonContainer(this.insertionSort, this.insertionSortOneStep);

   

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        RaisedButton(
          onPressed: () {
            insertionSort();
          },
          child: Row(
            children: [
              Icon(
                Icons.sort,
                color: Colors.deepPurple,
              ),
              Text("Sort"),
            ],
          ),
        ),
        RaisedButton(
          onPressed: () async {
            int flag = 0;
            int i = 1;
            while (flag == 0 && flag != 1) {
              await Future.delayed(Duration(microseconds: 3));
              flag = insertionSortOneStep(i);
              print("Step " + i.toString() + " is now sorted");
              i++;
            }
            print("Button that sort one step is now fully finnish");
          },
          child: Row(
            children: [
              Icon(
                Icons.sort,
                color: Colors.deepPurple,
              ),
              Text("Sort Step by Step"),
            ],
          ),
        ),
      ],
    );
  }
}
