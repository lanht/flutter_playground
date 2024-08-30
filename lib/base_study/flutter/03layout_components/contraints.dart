import 'package:flutter/material.dart';

class ConstraintsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contraints"),
      ),
      // body: ConstrainedBox(
      //   constraints: BoxConstraints(minWidth: double.infinity, minHeight: 50),
      //   child: Container(
      //     height: 5.0,
      //     child: DecoratedBox(
      //       decoration: BoxDecoration(color: Colors.red),
      //     ),
      //   ),
      // ),
      body: ConstrainedBox(
        constraints: BoxConstraints(minWidth: double.infinity, minHeight: 50),
        child: UnconstrainedBox(
          child: ConstrainedBox(
            constraints: BoxConstraints(minWidth: 90, minHeight: 20),
            child: DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
            ),
          ),
        ),
      ),
    );
  }
}
