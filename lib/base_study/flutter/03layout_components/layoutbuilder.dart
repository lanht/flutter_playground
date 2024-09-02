import 'package:flutter/material.dart';

class LayoutBuilderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _children = List.filled(6, Text("A"));

    return Scaffold(
      appBar: AppBar(
        title: Text("LayoutBuilder"),
      ),
      body: Column(
        children: [
          SizedBox(
            width: 190,
            child: ResponseColumn(children: _children),
          ),
          ResponseColumn(
            children: _children,
          ),
          LayoutLogPrint(child: Text("xx")),
        ],
      ),
    );
  }
}

class ResponseColumn extends StatelessWidget {
  const ResponseColumn({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 200) {
          return Column(
            children: children,
            mainAxisSize: MainAxisSize.min,
          );
        } else {
          var _children = <Widget>[];
          for (var i = 0; i < children.length; i += 2) {
            if (i + 1 < children.length) {
              _children.add(Row(
                children: [children[i], children[i + 1]],
                mainAxisSize: MainAxisSize.min,
              ));
            } else {
              _children.add(children[i]);
            }
          }
          return Column(
            children: _children,
            mainAxisSize: MainAxisSize.min,
          );
        }
      },
    );
  }
}

class LayoutLogPrint<T> extends StatelessWidget {
  const LayoutLogPrint({Key? key, required this.child, this.tag})
      : super(key: key);

  final Widget child;

  final T? tag;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        assert(() {
          print('${tag ?? key ?? child}: $constraints');
          return true;
        }());
        return child;
      },
    );
  }
}
