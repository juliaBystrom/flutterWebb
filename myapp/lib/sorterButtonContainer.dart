import 'package:flutter/material.dart';
import 'dart:async';

class SorterButtonContainer extends StatelessWidget {
  Function insertionSort;
  Function insertionSortOneStep;
  Function insertionSortOneSwap;
  SorterButtonContainer(
      this.insertionSort, this.insertionSortOneStep, this.insertionSortOneSwap);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ButtonBar(
        alignment: MainAxisAlignment.start,
        children: <Widget>[
          RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.purple),
            ),
            onPressed: () {
              insertionSort();
            },
            child: Text("Sort"),
          ),
          RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.purple),
            ),
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
            child: Text("Sort Step by Step"),
          ),
          RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.purple),
            ),
            onPressed: () async {
              int flag = 0;
              int i = 1;
              int index = 1;
              while (flag != 2) {
                await Future.delayed(Duration(microseconds: 2));
                flag = insertionSortOneSwap(index, i);
                print("insertionSortOneSwap with i: " +
                    i.toString() +
                    " index: " +
                    index.toString() +
                    " gave flag: " +
                    flag.toString());
                index--;
                if (flag == 1) {
                  i++;
                  index = i;
                }
              }
              print("Swap sort finnish");
            },
            child: Text("Sort Swap by Swap"),
          ),
        ],
      ),
    );
  }
}
