import 'package:flutter/material.dart';

class ContainerWidg extends StatelessWidget {
  const ContainerWidg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Container widgets"),),
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 200, // Setting the height of the container
            width: 200, // Setting the width of the container
            alignment: Alignment.center, // Aligns child at the center
            decoration: BoxDecoration(
              color: Colors.grey[300], // Background color
              borderRadius: BorderRadius.circular(10), // Rounded corners

              // Adding BoxShadow for Neumorphism effect
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade500, // Dark shadow
                  offset: Offset(4.0, 4.0), // Position of shadow
                  blurRadius: 15.0, // Blurriness
                  spreadRadius: 1.0, // Spread of shadow
                ),
                BoxShadow(
                  color: Colors.white, // Light shadow
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0,
                ),
              ],

              // Uncomment below to add a border
              // border: Border.all(
              //   color: Colors.black,
              //   width: 5,
              // ),

              // Uncomment below to change the shape to a circle
              // shape: BoxShape.circle,
            ),

            // Adding a gradient background (optional, uncomment to use)
            // decoration: BoxDecoration(
            //   gradient: LinearGradient(
            //     colors: [Colors.blue, Colors.purple],
            //   ),
            // ),

            // Adding margin (outside spacing) (optional)
            // margin: EdgeInsets.all(20),

            child: Padding(
              padding: const EdgeInsets.all(20.0), // Padding inside the container
              child: Text(
                "Hello Container Widget", 
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}