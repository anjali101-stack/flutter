import 'package:flutter/material.dart';

class PaddingSafeAreaExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    EdgeInsets padding = MediaQuery.of(context).padding;

    return Scaffold(
      appBar: AppBar(title: Text("Padding & Safe Area Example")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          "Top Padding: ${padding.top}, Bottom Padding: ${padding.bottom}",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
