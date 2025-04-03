import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
const MyAppBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          elevation: 0,
          title: Center(child: Text("Appbar", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)),
          leading: IconButton(onPressed: (

          ){}, icon: Icon(Icons.menu)),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.share)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.person))

          ],
        ),
      ),
    );
  }
}