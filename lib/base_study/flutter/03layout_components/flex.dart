import 'package:flutter/material.dart';

class FlexWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flex"),
        ),
        body: Column(
          children: [
            Flex(
              direction: Axis.horizontal,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 30,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 30,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: SizedBox(
                height: 100,
                child: Flex(
                  direction: Axis.vertical,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 30,
                        color: Colors.red,
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 30,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
