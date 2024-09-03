import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container"),
      ),
      body: Container(
        alignment: Alignment.center,
        constraints: BoxConstraints.tightFor(width: 200, height: 150),
        margin: EdgeInsets.only(top: 15, left: 120.0),
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [Colors.red, Colors.orange],
            center: Alignment.topLeft,
            radius: .98,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              offset: Offset(2.0, 2.0),
              blurRadius: 4.0,
            ),
          ],
        ),
        transform: Matrix4.rotationZ(.2),
        child: Text(
          "Container",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
