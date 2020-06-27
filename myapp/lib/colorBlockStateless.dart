import 'package:flutter/material.dart';

class ColorBlock extends StatelessWidget {
  double widthF;
  double heghtF;
  double color;
  ColorBlock(this.widthF, this.heghtF, this.color);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heghtF,
      width: 30,
      child: ColoredBox(
        color: HSVColor.fromAHSV(1.0, color, 1.0, 0.5).toColor(),
      ),

      // widthFactor: widthF,
/*       heightFactor: heghtF,
      child: ColoredBox(
        color: HSVColor.fromAHSV(1.0,color,1.0,0.5).toColor(),
        //color: Color(color),
      ), */
    );
  }
}
