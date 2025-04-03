import 'package:flutter/material.dart';

class ExpandedWidg extends StatelessWidget {
  const ExpandedWidg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Expanded Widget Example", style: TextStyle(fontSize: 24 ),)),
      body: Column(
        children: [
          /// ✅ Basic Expanded: Takes 2/7 of available space
          Expanded(
            flex: 2, // Takes 2 parts of total available space
            child: Container(
              color: Colors.deepPurple,
              child: const Center(
                child: Text(
                  "Flex: 2",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),

          /// ✅ Another Expanded: Takes 2/7 of available space
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.pink,
              child: const Center(
                child: Text(
                  "Flex: 2",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),

          /// ✅ Expanded with a different flex value: Takes 3/7 of available space
          Expanded(
            flex: 3, // Takes 3 parts of total available space
            child: Container(
              color: Colors.blueGrey,
              child: const Center(
                child: Text(
                  "Flex: 3",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),

          /// ✅ Expanded with Row: Uses available width
          Expanded(
            flex: 2,
            child: Row(
              children: [
                /// ✅ Expanded inside Row: Takes 1/3 of Row's width
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.green,
                    child: const Center(
                      child: Text(
                        "Row Flex: 1",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),

                /// ✅ Expanded inside Row: Takes 2/3 of Row's width
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.orange,
                    child: const Center(
                      child: Text(
                        "Row Flex: 2",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          /// ✅ Expanded inside a Parent with limited height
          Container(
            height: 200, // Fixed height container
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                    child: const Center(
                      child: Text(
                        "Limited Height Expanded",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
