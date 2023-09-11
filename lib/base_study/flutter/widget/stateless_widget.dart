import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Echo(text: "hello world");
  }
}

class Echo extends StatelessWidget {

  const Echo({
    Key key,
    this.text,
    this.backgroundColor = Colors.grey,
  }) : super(key: key);

  final String text;
  final Color backgroundColor;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: backgroundColor,
        child: Text(text),
      ),
    );
  }
}