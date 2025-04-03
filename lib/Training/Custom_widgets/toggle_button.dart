import 'package:flutter/material.dart';

// A reusable stateful widget that toggles between "ON" and "OFF"
class ToggleButton extends StatefulWidget {
  final bool initialState;
  final ValueChanged<bool> onToggle;

  const ToggleButton({
    Key? key,
    required this.initialState,
    required this.onToggle,
  }) : super(key: key);

  @override
  _ToggleButtonState createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  late bool isToggled;

  @override
  void initState() {
    super.initState();
    isToggled = widget.initialState; // Set initial state from parent
  }

  void toggleState() {
    setState(() {
      isToggled = !isToggled; // Toggle the state
    });
    widget.onToggle(isToggled); // Notify parent about the change
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: toggleState,
      child: Text(isToggled ? "ON" : "OFF"), // Change text based on state
      style: ElevatedButton.styleFrom(
        backgroundColor: isToggled ? Colors.green : Colors.red, // Change color
      ),
    );
  }
}
