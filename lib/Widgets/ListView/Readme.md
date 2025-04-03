# ListView in Flutter

## Introduction
`ListView` is a scrollable list of widgets in Flutter. It is one of the most commonly used widgets for displaying dynamic data efficiently. `ListView` supports both horizontal and vertical scrolling and can be implemented in multiple ways.

## Types of ListView
1. **ListView()** – A simple list of widgets without optimization.
2. **ListView.builder()** – Uses lazy loading and is best for large lists.
3. **ListView.separated()** – Similar to `ListView.builder()`, but adds separators between items.
4. **ListView.custom()** – Allows for advanced customization with `SliverChildDelegate`.

---

## Code Example: Implementing `ListView.builder()`
The following example demonstrates a `ListView.builder()` implementation with both a horizontal and a vertical list.

### **Dart Code**
```dart
import 'package:flutter/material.dart';
import 'package:my_app_flutter/Widgets/ListView/circle.dart';
import 'package:my_app_flutter/Widgets/ListView/square.dart';

class Listview extends StatelessWidget {
  Listview({Key? key}) : super(key: key);

  // List of posts to be displayed in vertical ListView
  final List _post = [
    "post 1",
    "post 2",
    "post 3",
    "post 4",
    "post 5"
  ];
  
  // List of stories to be displayed in horizontal ListView
  final List _story = [
    "Story 1",
    "Story 2",
    "Story 3",
    "Story 4",
    "Story 5"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Padding around the horizontal list of stories
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Container(
              height: 140, // Fixed height for horizontal ListView
              child: ListView.builder(
                itemCount: _story.length, // Total number of stories
                scrollDirection: Axis.horizontal, // Enables horizontal scrolling
                itemBuilder: (context, index) {
                  return Circle(
                    child: _story[index], // Passing story text to Circle widget
                  );
                },
              ),
            ),
          ),

          // Expanded widget ensures vertical ListView takes up remaining space
          Expanded(
            child: ListView.builder(
              itemCount: _post.length, // Total number of posts
              itemBuilder: (context, index) {
                return MySquare(
                  child: _post[index], // Passing post text to MySquare widget
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
```

### **Explanation of Parameters Used in `ListView.builder()`**
1. **`itemCount:`** Specifies the total number of items in the list.
2. **`itemBuilder:`** A function that returns the widget for each index.
3. **`scrollDirection:`** Controls the scrolling direction (`Axis.horizontal` for horizontal, `Axis.vertical` for vertical).

---

## **When to Use ListView?**
- Use `ListView.builder()` for performance optimization with large data sets.
- Use `ListView()` for small, static lists.
- Use `ListView.separated()` if you need dividers between list items.

This example effectively demonstrates a `ListView.builder()` setup with both horizontal and vertical scrolling.

