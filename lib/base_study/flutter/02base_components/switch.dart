import 'package:flutter/material.dart';

class SwitchAndCheckBoxWidget extends StatefulWidget {
  @override
  _SwitchAndCheckBoxWidgetState createState() =>
      _SwitchAndCheckBoxWidgetState();
}

class _SwitchAndCheckBoxWidgetState extends State<SwitchAndCheckBoxWidget> {
  bool _switchSelected = true;
  bool _checkboxSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SwitchAndCheckBox"),
      ),
      body: Column(
        children: <Widget>[
          Switch(
            value: _switchSelected,
            onChanged: (value) {
              setState(() {
                _switchSelected = value;
              });
            },
          ),
          Checkbox(
            value: _checkboxSelected,
            onChanged: (value) {
              setState(() {
                _checkboxSelected = value!;
              });
            },
          ),
        ],
      ),
    );
  }
}
