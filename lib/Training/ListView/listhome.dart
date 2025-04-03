import 'package:flutter/material.dart';
import 'package:my_app_flutter/Training/ListView/listview_2.dart';
import 'package:my_app_flutter/Training/ListView/listview_3.dart';
import 'package:my_app_flutter/Widgets/ListView/listview.dart';

class Listhome extends StatelessWidget {
 Listhome({ Key? key }) : super(key: key);
final List <Map<String, dynamic>>  listviewExample = [
      {"title": "ListView Example", "widget": Listview()},
    // {"title": "ListView Example 1", "widget": Listview1()},
    {"title": "ListView saperator", "widget": Listview2()},
    {"title": "ListView custom", "widget": Listview3()},
];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("List view examples"),),
      body: ListView.builder(
        itemCount: listviewExample.length,
        itemBuilder: (context, index){
          return Card(
             margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              title: Text(listviewExample[index]["title"]),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => listviewExample[index]["widget"],
                  ),
                );
              },

          )
          );
        },
      ),
    );
  }
}