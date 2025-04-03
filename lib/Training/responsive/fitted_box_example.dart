import 'package:flutter/material.dart';

class FittedBoxExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FittedBox Example")),
      body: Center(
        child: Container(
          width: 200,
          height: 100,
          color: Colors.orange,
          child: FittedBox(
            child: Text("This text scales dynamically", style: TextStyle(fontSize: 24)),
          ),
        ),
      ),
    );
  }
}
