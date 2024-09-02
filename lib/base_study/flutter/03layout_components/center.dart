import 'package:flutter/material.dart';

class CenterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Center"),
      ),
      body: DecoratedBox(
        decoration: BoxDecoration(color: Colors.red),
        child: Center(
          child: Text("xxx"),
        ),
      ),
    );
  }
}
