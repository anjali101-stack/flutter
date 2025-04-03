import 'package:flutter/material.dart';

class Listview2 extends StatelessWidget {
 Listview2({ Key? key }) : super(key: key);
  final List<String> items = List.generate(20, (index) => 'Item $index');

  @override
  Widget build(BuildContext context){
     return Scaffold(
      appBar: AppBar(
        title: Text('Flutter ListView.separated Example'),
      ),
      body:
//       ListView.separated(
//   itemCount: 10,
//   itemBuilder: (context, index) {
//     return ListTile(title: Text('Item $index'));
//   },
//   separatorBuilder: (context, index) {
//     return Divider(color: Colors.grey);
//   },
// )

       ListView.separated(
        itemCount: items.length,
        itemBuilder: (context, index) {
          // Build each list item
          return ListTile(
            title: Text(items[index]),
            onTap: () {
              // Handle tap event
              print('Tapped on ${items[index]}');
            },
          );
        },
        separatorBuilder: (context, index) {
          // Multiple separators: Divider + Padding + Container
          return Column(
            children: [
              Divider(
                color: Colors.black,
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Container(
                  height: 2,
                  color: Colors.blueAccent,
                ),
              ),
              Divider(
                color: Colors.green,
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
              
            ],
          );
        },
      ),
    );
  }
}