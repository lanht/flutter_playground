import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RowColumn"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("hello world "),
              Text("I am Jack"),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("hello world "),
              Text("I am Jack"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            textDirection: TextDirection.ltr,
            children: [
              Text("hello world "),
              Text("I am Jack "),
            ],
          ),
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.red),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              verticalDirection: VerticalDirection.up,
              children: [
                Text(
                  "hello world ",
                  style: TextStyle(fontSize: 30.0),
                ),
                Text("I am Jack "),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            verticalDirection: VerticalDirection.up,
            children: [
              Text(
                "hello world ",
                style: TextStyle(fontSize: 30.0),
              ),
              Text("I am Jack "),
            ],
          ),
        ],
      ),
    );
  }
}
