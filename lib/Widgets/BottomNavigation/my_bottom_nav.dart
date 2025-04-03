import 'package:flutter/material.dart';

class MyBottomNav extends StatefulWidget {
  const MyBottomNav({Key? key}) : super(key: key);

  @override
  State<MyBottomNav> createState() => _MyBottomNavState();
}

class _MyBottomNavState extends State<MyBottomNav> {
  int _selectedIndex = 0;


void _navigateBottomBar(int index ){
  setState(() {
    _selectedIndex = index;
  });
}

final List<Widget> _pages = [
Center(
        child: Text("Home page", style: TextStyle(fontSize: 28)),
      ),
      Center(
        child: Text("Message page ", style: TextStyle(fontSize: 28)),
      ),
      Center(
        child: Text("User login", style: TextStyle(fontSize: 28)),
      ),
      Center(
        child: Text("setting page ", style: TextStyle(fontSize: 28)),
      ),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Navigation"),),
      body:_pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          onTap: _navigateBottomBar,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat), label: "Chats"),
            BottomNavigationBarItem(
                icon: Icon(Icons.verified_user), label: "User"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ]),
    );
  }
}
