import 'package:flutter/material.dart';

class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView.builder Example'),
      ),
      body: GridView.builder(
        // This is where we define how the grid should be laid out.
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5, // Number of columns in the grid
          crossAxisSpacing: 10, // Horizontal space between items
          mainAxisSpacing: 10, // Vertical space between items
        ),
        itemCount: 20, // Number of items in the grid
        itemBuilder: (context, index) {
          // Create and return the grid item widget
          return Card(
            color: Colors.tealAccent, // Background color of the card
            elevation: 5, // Shadow of the card
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15), // Rounded corners
            ),
            child: Center(
              child: Text(
                'Item $index', // Text inside the grid item
                style: TextStyle(
                  fontSize: 18, // Font size of the text
                  fontWeight: FontWeight.bold, // Bold text
                  color: Colors.white, // White text color
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
