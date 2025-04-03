import 'package:flutter/material.dart';

class DevicePixelRatioExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double devicePixelRatio = MediaQuery.of(context).devicePixelRatio;

    return Scaffold(
      appBar: AppBar(title: Text("Device Pixel Ratio Example")),
      body: Center(
        child: Text(
          "Device Pixel Ratio: $devicePixelRatio",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
