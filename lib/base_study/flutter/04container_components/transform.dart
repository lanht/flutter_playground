import 'package:flutter/material.dart';

class TransformWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transform"),
      ),
      body: Container(
        color: Colors.black,
        child: Transform(
          transform: Matrix4.skewY(0.3),
          child: Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.red,
            child: Text("Apartment for rent!"),
          ),
        ),
      ),
    );
  }
}
