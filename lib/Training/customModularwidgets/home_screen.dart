import 'package:flutter/material.dart';
import 'package:my_app_flutter/Training/Custom_widgets/custom_card.dart';
import 'package:my_app_flutter/Training/customModularwidgets/custom_button.dart';
import 'package:my_app_flutter/Training/customModularwidgets/custom_text.dart';


class HomeScreens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Reusable Widgets Example")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            // CustomCard(
            //   title: "Flutter",
            //   description: "A framework for building cross-platform apps.",
            //   icon: Icon(Icons.flutter_dash, size: 40, color: Colors.blue),
            // ),
            // CustomCard(
            //   title: "Dart",
            //   description: "A modern programming language optimized for UI.",
            //   icon: Icon(Icons.code, size: 40, color: Colors.green),
            // ),
            SizedBox(height: 20),
            CustomText(
              text: "Click below to learn more!",
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 10),
            CustomButton(
              text: "Get Started",
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Button Clicked!")),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
