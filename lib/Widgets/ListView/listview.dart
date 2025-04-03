import 'package:flutter/material.dart';
import 'package:my_app_flutter/Widgets/ListView/circle.dart';
import 'package:my_app_flutter/Widgets/ListView/square.dart';

class Listview extends StatelessWidget {
  Listview({Key? key}) : super(key: key);

  // List of posts to be displayed in vertical ListView
  final List _post = ["post 1", "post 2", "post 3", "post 4", "post 5","post 6", "post 7", "post 8", "post 9", "post 10"];

  // List of stories to be displayed in horizontal ListView
  final List _story = [
    "Story 1",
    "Story 2",
    "Story 3",
    "Story 4",
    "Story 5",
    "Story 1",
    "Story 2",
    "Story 3",
    "Story 4",
    "Story 5",
    "Story 1",
    "Story 2",
    "Story 3",
    "Story 4",
    "Story 5",
    "Story 1",
    "Story 2",
    "Story 3",
    "Story 4",
    "Story 5",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("listView Example")),
      body: Column(
        children: [
          // Padding around the horizontal list of stories
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Container(
              height: 140, // Fixed height for horizontal ListView
              child: ListView.builder(
                itemCount: _story.length, // Total number of stories
                scrollDirection:
                    Axis.horizontal, // Enables horizontal scrolling
                itemBuilder: (context, index) {
                  return Circle(
                    child: _story[index], // Passing story text to Circle widget
                  );
                },
              ),
            ),
          ),

          // Expanded widget ensures vertical ListView takes up remaining space
          Expanded(
            child: ListView.builder(
              itemCount: _post.length, // Total number of posts
              itemBuilder: (context, index) {
                return MySquare(
                  child: _post[index], // Passing post text to MySquare widget
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
