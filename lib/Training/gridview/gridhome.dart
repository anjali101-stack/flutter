import 'package:flutter/material.dart';
import 'package:my_app_flutter/Training/gridview/custom_gridView.dart';
import 'package:my_app_flutter/Training/gridview/gridView_builder.dart';
import 'package:my_app_flutter/Training/gridview/grid_biew_extent.dart';
import 'package:my_app_flutter/Widgets/GridView&buider/grid_view.dart';

class Gridhome extends StatelessWidget {
  Gridhome({Key? key}) : super(key: key);
  final List<Map<String, dynamic>> _grid = [
    {"title": "GridView Example", "widget": MyGridView()},
    // {"title": "GridView Example ", "widget": GridviewExample()},
    {"title": "GridView Example 1", "widget": GridBiewExtent()},
    {"title": "GridView Example 2", "widget": GridViewBuilder()},
    {"title": "GridView Example 3", "widget": CustomGridView()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("grid view examples"),
      ),
      body: ListView.builder(
        itemCount: _grid.length,
        itemBuilder: (context , index){
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              title: Text(_grid[index]["title"]),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>  _grid[index]["widget"]));
              },
            ),
            
          );


      }),
    );
  }
}
