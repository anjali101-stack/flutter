import 'package:flutter/material.dart';

class LayoutBuilderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("LayoutBuilder Example")),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Center(
            child: Text(
              "Available Width: ${constraints.maxWidth}",
              style: TextStyle(fontSize: 18),
            ),
          );
        },
      ),
    );
  }
}
