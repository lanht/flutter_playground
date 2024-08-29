import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button"),
      ),
      body: Center(
          child: Column(children: [
        ElevatedButton(onPressed: () {}, child: Text("normal")),
        TextButton(onPressed: () {}, child: Text("normal")),
        OutlinedButton(onPressed: () {}, child: Text("nomal")),
        IconButton(onPressed: () {}, icon: Icon(Icons.thumb_down)),
        ElevatedButton.icon(
            icon: Icon(Icons.send), onPressed: () {}, label: Text("f发送")),
        OutlinedButton.icon(
            onPressed: () {}, label: Text("添加"), icon: Icon(Icons.add)),
        TextButton.icon(
            onPressed: () {}, label: Text("详情"), icon: Icon(Icons.info)),
      ])),
    );
  }
}
