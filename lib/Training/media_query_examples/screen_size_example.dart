import 'package:flutter/material.dart';

class ScreenSizeExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(title: Text("Screen Size Example")),
      body: Center(
        child: Text(
          "Width: ${screenSize.width}, Height: ${screenSize.height}",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
