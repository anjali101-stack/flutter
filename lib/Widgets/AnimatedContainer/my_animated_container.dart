import 'package:flutter/material.dart';

class MyAnimatedContainer extends StatefulWidget {
  MyAnimatedContainer({Key? key}) : super(key: key);

  @override
  State<MyAnimatedContainer> createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  double boxHeight = 100;
  double boxWidth = 100;
  var boxcolor = Colors.deepPurple;

  void _expandBox() {
    setState(() {
      boxHeight = 300;
      boxWidth = 300;
    });
  }

  void _changeboxColor() {
  setState(() {
    boxcolor = Colors.pink;
  });
  }

  void _originalBox() {
    setState(() {
      boxHeight = 100;
      boxWidth = 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _expandBox,
      onLongPress: _originalBox,
      onDoubleTap: _changeboxColor,
      child: Scaffold(
        appBar: AppBar(title: Text("Animated Container")),
        backgroundColor: Colors.pinkAccent[100],
        body: Center(
          child: GestureDetector(
            child: AnimatedContainer(
              duration: Duration(seconds: 2),
              height: boxHeight,
              width: boxWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: boxcolor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
