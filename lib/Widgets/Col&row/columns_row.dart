import 'package:flutter/material.dart';

class ColumnsRow extends StatelessWidget {
  const ColumnsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Row & Column Example")), // Title Bar

      /// ✅ ROW EXAMPLE (Uncomment the Column part below to switch examples)
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.center, // Centers widgets horizontally
      //   crossAxisAlignment: CrossAxisAlignment.end, // Aligns widgets at the bottom
      //   children: [
      //     /// ✅ First Box (Fixed width, no height set, takes full available height)
      //     Container(
      //       // height: 100,  // If height is not set, it expands vertically
      //       width: 100,
      //       color: Colors.deepPurple,
      //     ),

      //     /// ✅ Second Box (With Padding)
      //     Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 30.0), // Space on both sides
      //       child: Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.deepPurple[400],
      //       ),
      //     ),

      //     /// ✅ Third Box (Fixed Height & Width)
      //     Container(
      //       height: 100,
      //       width: 100,
      //       color: Colors.deepPurple[200],
      //     ),
      //   ],
      // ),

      
      /// ✅ COLUMN EXAMPLE (Uncomment this and comment out the Row to see the column layout)
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Centers widgets vertically
        children: [
          /// ✅ First Box
          Container(
            height: 100,
            width: 100,
            color: Colors.deepPurple,
          ),

          /// ✅ Second Box (With Vertical Padding)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Container(
              height: 100,
              width: 100,
              color: Colors.deepPurple[400],
            ),
          ),

          /// ✅ Third Box
          Container(
            height: 100,
            width: 100,
            color: Colors.deepPurple[200],
          ),
        ],
      ),
      
    );
  }
}
