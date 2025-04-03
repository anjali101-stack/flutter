import 'package:flutter/material.dart';
import 'package:my_app_flutter/Widgets/BottomNavigation/my_bottom_nav.dart';
import 'package:my_app_flutter/pages/counter_page..dart';

class MyDrawer extends StatelessWidget {
const MyDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.pink,),
      drawer: Drawer(
        child: Container(
          color: Colors.pink[200],
          child: ListView(
            
            children: [
              DrawerHeader(
                child: Text("P U S H A N I", style: TextStyle(fontSize: 35),),

                ),

                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => CounterPage()));
                  },

                ),   ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Bottom Nav bar"),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyBottomNav()));
                  },

                ),   ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => CounterPage()));
                  },

                ),   ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => CounterPage()));
                  },

                )
            ],
          ),
        ),
      ),
    );
  }
}