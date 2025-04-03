import 'package:flutter/material.dart';

class OrientationExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(title: Text("Orientation Example")),
      body: Center(
        child: Text(
          "Current Orientation: ${orientation == Orientation.portrait ? "Portrait" : "Landscape"}",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
