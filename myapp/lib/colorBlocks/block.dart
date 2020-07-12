import 'package:flutter/material.dart';

class Block extends StatelessWidget {
  final double heightF;
  final double color;

  Block(this.heightF, this.color);

  int getColorint(){
    return color.toInt();
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
        flex: 1,
        fit: FlexFit.tight,
        child: FractionallySizedBox(
          heightFactor: heightF,
          child: Container(
            // height: heightF * 200,
            color: HSVColor.fromAHSV(1.0, color, 1.0, 0.9).toColor(),
          ),
        ),
      );
  }
}