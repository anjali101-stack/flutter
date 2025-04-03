import 'package:flutter/material.dart';

class MySilver extends StatelessWidget {
const MySilver({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Icon(Icons.menu),
            // title: Text('S I L V  E R A P P B A R'),
            expandedHeight: 300,
            flexibleSpace:FlexibleSpaceBar(
              background: Container(
                color: Colors.pink[400],
              
              ),
              title: Text("S I L V  E R A P P B A R"),
            ) ,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 400,
                  color: Colors.pink[200],
                ),
              ),
            ),
          ), SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 400,
                  color: Colors.pink,
                ),
              ),
            ),
          ), SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 400,
                  color: Colors.pink,
                ),
              ),
            ),
          )
        ],
      
       
      )
    );
  }
}