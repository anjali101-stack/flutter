import 'package:flutter/material.dart';

class FlexExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flexible & Expanded Example")),
      body: Column(
        children: [
          Expanded(
            child: Container(color: Colors.blue, child: Center(child: Text("Expanded 1"))),
          ),
          Flexible(
            child: Container(color: Colors.red, child: Center(child: Text("Flexible 2"))),
          ),
        ],
      ),
    );
  }
}
