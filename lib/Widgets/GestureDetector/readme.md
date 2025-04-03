# Gesture Detector in Flutter

## Overview

The `GestureDetector` widget in Flutter is used to detect gestures such as taps, double taps, long presses, swipes, and drags. It is a fundamental component for handling user interactions in a Flutter application.

## Why Use GestureDetector?
- Allows detecting various gestures on widgets.
- Enhances user interaction and experience.
- Works seamlessly with all Flutter UI elements.
- Enables custom gesture handling.

## Supported Gesture Types

| Gesture Property  | Description |
|------------------|-------------|
| `onTap`         | Triggered when a single tap occurs. |
| `onDoubleTap`   | Triggered when a double tap occurs. |
| `onLongPress`   | Triggered when a long press occurs. |
| `onPanStart`    | Triggered when a drag/swipe starts. |
| `onPanUpdate`   | Triggered when a drag/swipe is in progress. |
| `onPanEnd`      | Triggered when a drag/swipe ends. |
| `onScaleStart`  | Triggered when a pinch-to-zoom starts. |
| `onScaleUpdate` | Triggered when a pinch-to-zoom updates. |

## Example Usage

```dart
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
```

## Explanation
- **Tap (`onTap`)**: Changes text to "Tapped!" when tapped once.
- **Double Tap (`onDoubleTap`)**: Updates text to "Double Tapped!" when tapped twice quickly.
- **Long Press (`onLongPress`)**: Displays "Long Pressed!" when held.
- **Swipe (`onPanUpdate`)**: Changes text to "Swiped!" when the widget is dragged.

## Conclusion
Using `GestureDetector` in Flutter allows you to build interactive applications that respond to various user actions. It is a powerful tool for handling custom gestures and improving user experience.

