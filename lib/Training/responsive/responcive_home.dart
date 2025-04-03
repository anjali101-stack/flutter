import 'package:flutter/material.dart';
import 'package:my_app_flutter/Training/responsive/aspect_ratio_example.dart';
import 'package:my_app_flutter/Training/responsive/fitted_box_example.dart';
import 'package:my_app_flutter/Training/responsive/flex_example.dart';
import 'package:my_app_flutter/Training/responsive/layout_builder_example.dart';
import 'package:my_app_flutter/Training/responsive/media_query_example.dart';


class ResponciveHome extends StatelessWidget {
 ResponciveHome({ Key? key }) : super(key: key);

final List <Map<String , dynamic>> _res  = [
   {"title": "Responsive media", "widget": MediaQueryExample()},
    {"title": "Responsive layout", "widget": LayoutBuilderExample()},
    {"title": "Responsive flex", "widget": FlexExample()},
    {"title": "Responsive AspectRatioExample", "widget": AspectRatioExample()},
    {"title": "Responsive FittedBoxExample", "widget": FittedBoxExample()},
];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("List view examples"),),
      body: ListView.builder(
        itemCount: _res.length,
        itemBuilder: (context, index){
          return Card(
             margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              title: Text(_res[index]["title"]),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => _res[index]["widget"],
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