import 'package:flutter/material.dart';
import './colorBlocks.dart';
import './colorBlockStateless.dart';

class DataEntryContainer extends StatefulWidget {
  Size size;
  DataEntryContainer(this.size);

  @override
  _DataEntryContainerState createState() {
    return _DataEntryContainerState(size);
  }
}

class _DataEntryContainerState extends State<DataEntryContainer> {
  ColorBlocks cblocks;
  Size size;
  _DataEntryContainerState(this.size);

  @override
  Widget build(BuildContext context) {
    ColorBlocks cblocks = new ColorBlocks(size);

    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: cblocks.getListOfColorBlocks(),
      ),
    );
  }
}
