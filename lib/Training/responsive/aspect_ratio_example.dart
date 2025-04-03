import 'package:flutter/material.dart';

class AspectRatioExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AspectRatio Example")),
      body: Center(
        child: AspectRatio(
          aspectRatio: 16/ 2,
          child: Container(color: Colors.green),
        ),
      ),
    );
  }
}
