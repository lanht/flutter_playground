import 'package:flutter/material.dart';
import 'package:flutter_playground/base_study/flutter/02base_components/text.dart';
import 'package:flutter_playground/base_study/flutter/02base_components/button.dart';
import 'package:flutter_playground/base_study/flutter/02base_components/image.dart';
import 'package:flutter_playground/base_study/flutter/02base_components/switch.dart';
import 'package:flutter_playground/base_study/flutter/02base_components/textField.dart';
import 'package:flutter_playground/base_study/flutter/02base_components/form.dart';
import 'package:flutter_playground/base_study/flutter/02base_components/progress.dart';
import 'package:flutter_playground/base_study/flutter/03layout_components/contraints.dart';
import 'package:flutter_playground/base_study/flutter/03layout_components/row.dart';
import 'package:flutter_playground/base_study/flutter/03layout_components/column.dart';
import 'package:flutter_playground/base_study/flutter/03layout_components/flex.dart';
import 'package:flutter_playground/base_study/flutter/03layout_components/wrap.dart';
import 'package:flutter_playground/base_study/flutter/03layout_components/flow.dart';
import 'package:flutter_playground/base_study/flutter/03layout_components/stack_positioned.dart';
import 'package:flutter_playground/base_study/flutter/03layout_components/align.dart';
import 'package:flutter_playground/base_study/flutter/03layout_components/center.dart';
import 'package:flutter_playground/base_study/flutter/03layout_components/layoutbuilder.dart';
import 'package:flutter_playground/base_study/flutter/04container_components/padding.dart';
import 'package:flutter_playground/base_study/flutter/04container_components/decoratedBox.dart';
import 'package:flutter_playground/base_study/flutter/04container_components/transform.dart';
import 'package:flutter_playground/base_study/flutter/04container_components/container.dart';
import 'package:flutter_playground/base_study/flutter/04container_components/fittedBox.dart';

void main() {
  runApp(MyApp());
}

final _routerMap = {
  'text': (context) => TextWidget(),
  'button': (context) => ButtonWidget(),
  'image': (context) => ImageWidegt(),
  "switch": (context) => SwitchAndCheckBoxWidget(),
  'textField': (context) => TextFieldWidget(),
  'form': (context) => FormWidget(),
  'progress': (context) => ProgressWidget(),
  'constraints': (context) => ConstraintsWidget(),
  'row': (context) => RowWidget(),
  'column': (context) => ColumnWidget(),
  'flex': (context) => FlexWidget(),
  'wrap': (context) => WrapWidget(),
  'flow': (context) => FlowWidget(),
  'stack_positioned': (context) => StackPositionedWidget(),
  'align': (context) => AlignWidget(),
  'center': (context) => CenterWidget(),
  'layoutbuilder': (context) => LayoutBuilderWidget(),
  'padding': (context) => PaddingWidget(),
  'decoratedBox': (context) => DecoratedBoxWidget(),
  'transform': (context) => TransformWidget(),
  'container': (context) => ContainerWidget(),
  'fittedBox': (context) => FittedBoxWidget(),
};

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: _routerMap,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List _list = [];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    _list = _routerMap.keys.toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
          itemCount: _list.length,
          itemExtent: 50.0,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(_list[index]),
              onTap: () {
                Navigator.pushNamed(context, _list[index]);
              },
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
