import 'package:flutter/material.dart';

class MySquare extends StatelessWidget {
  final String child;
   MySquare({ required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        height: 450,
        color: Colors.deepPurple[200],
        child: Center(child: Text(child, style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),)),
      ),
    );
  }
}
