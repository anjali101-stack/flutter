import 'package:flutter/material.dart';

// A stateless widget representing the ListView.custom example
class Listview3 extends StatelessWidget {
  Listview3({Key? key}) : super(key: key);

  // Generating a list of 10 items with names 'Item 0' to 'Item 9'
  final List<String> items = List.generate(10, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar at the top of the screen with a title
      appBar: AppBar(
        title: Text('Flutter ListView.custom Complex Example'),
      ),
      
      // The body of the Scaffold contains the ListView.custom
      body: ListView.custom(
        
        // Using SliverChildBuilderDelegate to lazily build list items
        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) {
            return Card(
              margin: EdgeInsets.all(10), // Adds margin around each card
              child: ListTile(
                leading: Icon(Icons.star, color: Colors.orange), // Leading icon
                title: Text(items[index]), // Main title showing item name
                subtitle: Text('This is a complex list item ${items[index]}'), // Subtitle text
                trailing: Icon(Icons.arrow_forward), // Trailing arrow icon
                
                // When tapped, it prints the tapped item in the console
                onTap: () {
                  print('Tapped on ${items[index]}');
                },
              ),
            );
          },
          childCount: items.length, // Defines the number of items in the list
        ),
      ),
    );
  }
}