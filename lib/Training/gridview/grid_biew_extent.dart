import 'package:flutter/material.dart';

class GridBiewExtent extends StatelessWidget {
  const GridBiewExtent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView.extent Example'),
      ),
      body: GridView.extent(
        // Define the maximum width of each item
        maxCrossAxisExtent: 150,  // Each item will have a max width of 150
        crossAxisSpacing: 5,      // Horizontal space between items
        mainAxisSpacing: 5,       // Vertical space between items
        
        // Create a list of widgets for the grid
        children: List.generate(20, (index) {
          return Card(
            color: Colors.tealAccent,
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),  // Rounded corners for the card
            ),
            child: Center(
              child: Text(
                'Item $index',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,  // Text color inside the grid item
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
