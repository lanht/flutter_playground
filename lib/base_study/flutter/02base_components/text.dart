import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

void main() {
  runApp(TextWidget());
}

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Text Widget"),
        ),
        body: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello World",
              textAlign: TextAlign.left,
            ),
            Text(
              "Hello World" * 4,
              // maxLines: 1,
              // overflow: TextOverflow.ellipsis,
            ),
            Text(
              "Hello World",
              textScaler: TextScaler.noScaling,
            ),
            Text("Hello World",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 2,
                    wordSpacing: 2,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.red,
                    decorationStyle: TextDecorationStyle.dotted)),
            Text.rich(
              TextSpan(children: [
                TextSpan(text: "Home: "),
                TextSpan(
                    text: "https://flutter.dev",
                    style: TextStyle(color: Colors.blue),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print("Tap on TextSpan");
                      }),
              ]),
            )
          ],
        )));
  }
}
