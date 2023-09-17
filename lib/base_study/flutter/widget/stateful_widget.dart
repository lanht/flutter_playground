import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CounterWidget()
    );
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({Key key, this.intValue = 0});

  final int intValue;

  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;
  @override
  void initState() {
    super.initState();

    _counter = widget.intValue;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
            child: Text('$_counter'),
            onPressed: () => setState(
              () => ++_counter,
            ),
          )
        ),
    );
  }

}