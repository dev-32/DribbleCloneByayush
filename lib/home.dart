import 'package:dribble_clone_design/screens/first_screen.dart';
import 'package:dribble_clone_design/screens/second_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _currentIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
   FirstScreen(),
    SecondScreen(),
  ];
  void _navBarChange(int index){
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view_rounded), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
        currentIndex: _currentIndex,
        selectedFontSize: 12,
        onTap: _navBarChange,
      ),
      body: _widgetOptions.elementAt(_currentIndex),
    );
  }
}
