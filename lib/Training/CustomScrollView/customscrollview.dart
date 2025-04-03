import 'package:flutter/material.dart';

class Customscrollview extends StatelessWidget {
  const Customscrollview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CustomScrollView Example'),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          // SliverAppBar provides an app bar that can expand and collapse
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: false, // Keeps the AppBar visible at the top when collapsed
            flexibleSpace: FlexibleSpaceBar(
              title: Text('CustomScrollView'),
              background: Image.asset(
                'lib/images/1.png', // Replace with your image
                fit: BoxFit.cover,
              ),
            ),
          ),
          
          // SliverList allows you to display a list of items in a scrollable area
          SliverList(
            delegate: SliverChildBuilderDelegate(
              ( context, int index) {
                return ListTile(
                  title: Text('List item $index'),
                  subtitle: Text('This is item number $index'),
                  leading: Icon(Icons.list),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    print('Tapped on item $index');
                  },
                );
              },
              childCount: 20, // Total number of items
            ),
          ),
          
        
          
        ],
      ),
    );
  }
}
