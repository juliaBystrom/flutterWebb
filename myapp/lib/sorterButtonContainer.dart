import 'package:flutter/material.dart';

class SorterButtonContainer extends StatelessWidget {
  Function insertionSort;
  SorterButtonContainer(this.insertionSort);

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
      ],
    );
  }
}
