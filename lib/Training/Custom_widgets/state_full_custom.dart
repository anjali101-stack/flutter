import 'package:flutter/material.dart';
import 'package:my_app_flutter/Training/Custom_widgets/toggle_button.dart';

// A stateful widget that uses the ToggleButton inside a Scaffold
class StateFullCustom extends StatefulWidget {
  const StateFullCustom({Key? key}) : super(key: key);

  @override
  _StateFullCustomState createState() => _StateFullCustomState();
}

class _StateFullCustomState extends State<StateFullCustom> {
  bool toggleState = false;

  void handleToggle(bool newState) {
    setState(() {
      toggleState = newState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Custom Stateful Widget")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ToggleButton(
              initialState: toggleState,
              onToggle: handleToggle,
            ),
            SizedBox(height: 20),
            Text(
              "Button is ${toggleState ? "ON" : "OFF"}",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
