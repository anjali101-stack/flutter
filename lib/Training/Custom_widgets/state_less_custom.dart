import 'package:flutter/material.dart';
import 'package:my_app_flutter/Training/Custom_widgets/custom_card.dart';

// A stateless widget that uses the CustomCard widget inside a Scaffold
class StateLessCustom extends StatelessWidget {
  const StateLessCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Custom Stateless Widget")),
      body: Center(
        child: CustomCard(
          title: "Flutter Custom Widget",
          subtitle: "This is a reusable stateless widget.",
        ),
      ),
    );
  }
}
