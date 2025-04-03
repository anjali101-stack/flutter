import 'package:flutter/material.dart';

class GestureExample extends StatefulWidget {
  @override
  _GestureExampleState createState() => _GestureExampleState();
}

class _GestureExampleState extends State<GestureExample> {
  String _message = "Tap or Swipe";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gesture Detector Example')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _message = "Tapped!";
            });
          },
          onDoubleTap: () {
            setState(() {
              _message = "Double Tapped!";
            });
          },
          onLongPress: () {
            setState(() {
              _message = "Long Pressed!";
            });
          },
          onPanUpdate: (details) {
            setState(() {
              _message = "Swiped!";
            });
          },
          child: Container(
            height: 200,
            width: 200,
            color: Colors.blueAccent,
            alignment: Alignment.center,
            child: Text(
              _message,
              style: TextStyle(color: Colors.white, fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: GestureExample()));
}
