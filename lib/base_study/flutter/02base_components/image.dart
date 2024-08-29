import 'package:flutter/material.dart';

class ImageWidegt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var img = AssetImage("images/avatar.png");
    String icons = "";
// accessible: 0xe03e
    icons += "\uE03e";
// error:  0xe237
    icons += " \uE237";
// fingerprint: 0xe287
    icons += " \uE287";
    return Scaffold(
      appBar: AppBar(
        title: Text("Image"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              icons,
              style: TextStyle(
                  fontFamily: "MaterialIcons",
                  fontSize: 24.0,
                  color: Colors.green),
            ),
            Image(
              image: img,
              width: 100,
            ),
            Image(
              image: NetworkImage(
                  "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
              width: 100,
            ),
            Image.network(
              "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
              width: 100,
            ),
            Image(
              image: AssetImage("images/avatar.png"),
              width: 100,
              color: Colors.blue,
              colorBlendMode: BlendMode.difference,
            ),
            Image(
                image: img,
                width: 100,
                height: 200,
                repeat: ImageRepeat.repeatY)
          ].map((e) {
            return Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: SizedBox(
                    width: 100,
                    child: e,
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
