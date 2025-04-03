import 'package:flutter/material.dart';

class GridviewExample extends StatelessWidget {
  const GridviewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // This container is wrapped around the GridView to act as the parent widget.
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Example'),
      ),
      body: GridView.builder(
        // The delegate that controls how the grid will be laid out
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          // Number of columns in the grid
          crossAxisCount: 6, 
          
          // Spacing between grid items horizontally
          crossAxisSpacing: 10, 
          
          // Spacing between grid items vertically
          mainAxisSpacing: 10, 

          // Aspect ratio (height/width) of each item. 
          // A value of 1.0 makes the items square-shaped.
          childAspectRatio: 1.0, 
        ),
        
        // The total number of items to display in the grid
        itemCount: 50, 
        
        // Builder for each grid item
        itemBuilder: (context, index) {
          return Card(
            color: const Color.fromARGB(255, 141, 177, 178), // Background color of the item
            elevation: 5, // Elevation to give the card a shadow effect
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15), // Rounded corners for the card
            ),
            child: Center(
              // This is the content of each grid item
              child: Text(
                'Item $index hello', // Display the index as the item name
                style: TextStyle(
                  fontSize: 18, 
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // White text on a teal background
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
