import 'package:flutter/material.dart';

class ImageAssests extends StatelessWidget {
const ImageAssests({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child:  Container(
          height: 200,
          width: 400,
          color: Colors.deepPurpleAccent,
          child: Image.asset('lib/images/1.png', fit: BoxFit.cover,)),
        // child: Container(
        //   height: 200,
        //   width: 200,
        //   color: Colors.deepPurple,
        // ),
      ),
    );
  }
}