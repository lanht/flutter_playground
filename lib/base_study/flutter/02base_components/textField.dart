import "package:flutter/material.dart";

class TextFieldWidget extends StatefulWidget {
  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  TextEditingController _usernameController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _usernameController.text = "hello world";
    _usernameController.selection = TextSelection(
        baseOffset: 2, extentOffset: _usernameController.text.length);
    _usernameController.addListener(() {
      print("input: ${_usernameController.text}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField"),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            autofocus: true,
            controller: _usernameController,
            decoration: InputDecoration(
                labelText: "用户名",
                hintText: "用户名或邮箱",
                prefixIcon: Icon(Icons.person)),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "密码",
              hintText: "您的登录密码",
              prefixIcon: Icon(Icons.lock),
            ),
            obscureText: true,
          ),
        ],
      ),
    );
  }
}
