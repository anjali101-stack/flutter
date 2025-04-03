import 'package:flutter/material.dart';
import 'package:my_app_flutter/Training/media_query_examples/device_pixel_ratio_example.dart';
import 'package:my_app_flutter/Training/media_query_examples/orientation_example.dart';
import 'package:my_app_flutter/Training/media_query_examples/padding_safe_area_example.dart';
import 'package:my_app_flutter/Training/media_query_examples/screen_size_example.dart';

class MediaQueryHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MediaQuery Examples")),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          _buildNavigationButton(context, "Screen Size", ScreenSizeExample()),
          _buildNavigationButton(context, "Orientation", OrientationExample()),
          _buildNavigationButton(context, "Device Pixel Ratio", DevicePixelRatioExample()),
          _buildNavigationButton(context, "Padding & Safe Area", PaddingSafeAreaExample()),
        ],
      ),
    );
  }

  Widget _buildNavigationButton(BuildContext context, String title, Widget page) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(16),
          textStyle: TextStyle(fontSize: 18),
        ),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        ),
        child: Text(title),
      ),
    );
  }
}
