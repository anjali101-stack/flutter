import 'package:flutter/material.dart';

class Listview1 extends StatelessWidget {
  Listview1({Key? key}) : super(key: key);

  final List<String> item = List.generate(100, (index) => 'item $index');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: item.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(item[index]),
            onTap: ()  {
              print('tapped on ${item[index]}');
            },
          );
        },
      ),
    );
  }
}
