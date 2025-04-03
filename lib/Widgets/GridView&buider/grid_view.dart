import 'package:flutter/material.dart';

// A stateless widget representing a simple GridView layout
class MyGridView extends StatelessWidget {
  const MyGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
        title: Text('Flutter Grid view  Complex Example'),
      ),
      
      // The body contains a GridView with a fixed number of columns
      body: GridView.count(
        crossAxisCount: 3, // Defines the number of columns in the grid
        
        // The children are multiple Padding widgets, each containing a blue square Container
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0), // Adds spacing around each grid item
            child: Container(
              height: 50, // Fixed height of the container
              width: 50, // Fixed width of the container
              color: Colors.blue, // Sets the background color to blue
            ),
          ), 
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 50,
              color: Colors.blue,
            ),
          ), 
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 50,
              color: Colors.blue,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 50,
              color: Colors.blue,
            ),
          ), 
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 50,
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
