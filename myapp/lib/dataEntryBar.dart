import 'package:flutter/material.dart';

class DataEntryBar extends StatefulWidget {
  Function buttonFunction;
  DataEntryBar(this.buttonFunction);

  @override
  _DataEntryBarState createState() => _DataEntryBarState(buttonFunction);
}

class _DataEntryBarState extends State<DataEntryBar> {
  // final _formKey = GlobalKey<FormState>();
  Function buttonFunction;

  double _valueSlider = 10;
  _DataEntryBarState(this.buttonFunction);

  Widget dataEntrySlider() {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        activeTrackColor: Colors.deepPurple[700],
        inactiveTrackColor: Colors.deepPurple[50],
        trackHeight: 4.0,
        // TO DO implement own SliderComponentShape
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
        thumbColor: Colors.purpleAccent,
        overlayShape: RoundSliderOverlayShape(overlayRadius: 18.0),
        valueIndicatorColor: Colors.purpleAccent,
        valueIndicatorTextStyle: TextStyle(
          color: Colors.black,
        ),
        showValueIndicator: ShowValueIndicator.always,
      ),
      child: Slider(
        min: 0,
        max: 100,
        divisions: 100,
        value: _valueSlider,
        label: "$_valueSlider",
        onChanged: (value) {
          setState(() {
            _valueSlider = value;
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Wrap(
        alignment: WrapAlignment.start,
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 10,
        children: [
          Text(
            "Colorblocks:",
            textScaleFactor: 1.5,
            style: TextStyle(
              color: Colors.deepPurple,
              fontWeight: FontWeight.normal,
            ),
          ),
          Container(
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              color: Colors.deepPurple[100],
            ),
            padding: EdgeInsets.all(10),
            /* margin: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 10,
            ), */
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                dataEntrySlider(),
                Text(
                  "$_valueSlider",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.deepPurple[50],
                  ),
                ),
              ],
            ),
          ),
          RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            color: Colors.deepPurple[500],
            padding: EdgeInsets.all(10),
            onPressed: () {
              buttonFunction(_valueSlider);
            },
            child: Text(
              "Create Rainbow Mess",
              textScaleFactor: 1.5,
              style: TextStyle(
                color: Colors.deepPurple[50],
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
