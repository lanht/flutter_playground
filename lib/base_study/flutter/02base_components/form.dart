import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  TextEditingController _unameController = TextEditingController();
  TextEditingController _pwdController = TextEditingController();
  GlobalKey _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _unameController.text = 'hello world';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
      ),
      body: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.always,
        child: Column(
          children: <Widget>[
            TextFormField(
              autofocus: true,
              controller: _unameController,
              decoration: InputDecoration(
                labelText: '用户名',
                hintText: '用户名或邮箱',
                icon: Icon(Icons.person),
              ),
              validator: (v) {
                return v!.trim().isNotEmpty ? null : '用户名不能为空';
              },
            ),
            TextFormField(
              controller: _pwdController,
              decoration: InputDecoration(
                labelText: '密码',
                hintText: '您的登录密码',
                icon: Icon(Icons.lock),
              ),
              obscureText: true,
              validator: (v) {
                return v!.trim().isNotEmpty ? null : '密码不能为空';
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        if ((_formKey.currentState as FormState).validate()) {
                          print('验证通过');
                        }
                      },
                      child: Text('登录'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
