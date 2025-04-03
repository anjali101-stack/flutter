# GridView in Flutter

## Introduction

`GridView` is a Flutter widget that arranges children in a grid format. It provides multiple constructors to build grid-based layouts efficiently.

## Types of GridView Constructors

1. **GridView.builder** - Dynamically builds the grid based on the number of items.
2. **GridView.count** - Creates a grid with a fixed number of columns.
3. **GridView.extent** - Creates a grid with items having a maximum cross-axis extent.
4. **GridView.custom** - Allows building a grid with a custom delegate.

---

## Using GridView in Flutter

### **1. GridView.builder Example**

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridViewExample(),
  ));
}

class GridViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GridView.builder Example")),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 10.0, // Space between columns
          mainAxisSpacing: 10.0, // Space between rows
        ),
        itemCount: 6, // Number of items
        itemBuilder: (context, index) {
          return Container(
            color: Colors.blueAccent,
            child: Center(child: Text("Item \$index", style: TextStyle(color: Colors.white))),
          );
        },
      ),
    );
  }
}
```

### **2. GridView.count Example**

```dart
GridView.count(
  crossAxisCount: 3, // Number of columns
  children: List.generate(9, (index) {
    return Container(
      margin: EdgeInsets.all(5),
      color: Colors.redAccent,
      child: Center(child: Text("Box \$index", style: TextStyle(color: Colors.white))),
    );
  }),
)
```

### **3. GridView.extent Example**

```dart
GridView.extent(
  maxCrossAxisExtent: 150, // Maximum width of an item
  children: List.generate(8, (index) {
    return Container(
      margin: EdgeInsets.all(5),
      color: Colors.green,
      child: Center(child: Text("Box \$index", style: TextStyle(color: Colors.white))),
    );
  }),
)
```

---

## Summary

- **`GridView.builder`** is best for dynamically generated grids.
- **`GridView.count`** is useful for a fixed number of columns.
- **`GridView.extent`** allows defining a max width for each item.
- **`GridView.custom`** is for advanced use cases with custom grid layouts.

Using `GridView` effectively helps create beautiful and structured UIs in Flutter applications.

