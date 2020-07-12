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
        inactiveTrackColor: Colors.deepPurple[100],
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
      child: Row(
        children: [
          Text("Data Entrys:"),
          dataEntrySlider(),
          RaisedButton(
            onPressed: () {
              buttonFunction(_valueSlider);
              
            },
            child: Text("Create Rainbow Mess"),
          )
        ],
      ),
    );
  }
}
