import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: Text("normal"),
          onPressed: () {
            print("normal");
          },
        ),
      ),
    );
  }
}
