import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GridView.custom Example")),
      body: GridView.custom(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 columns in the grid
          crossAxisSpacing: 10, // Space between columns
          mainAxisSpacing: 10, // Space between rows
        ),
        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) {
            return Card(
              color: Colors.blueAccent,
              child: Center(
                child: Text(
                  'Item $index',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            );
          },
          childCount: 12, // Total number of grid items
        ),
      ),
    );
  }
}
