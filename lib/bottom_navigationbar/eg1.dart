import 'package:flutter/material.dart';
import 'package:module2_flutter/bottom_navigationbar/page1.dart';
import 'package:module2_flutter/bottom_navigationbar/page2.dart';
import 'package:module2_flutter/bottom_navigationbar/page3.dart';
import 'package:module2_flutter/bottom_navigationbar/page4.dart';

class NavigationBarExample extends StatefulWidget {
  const NavigationBarExample({super.key});

  @override
  State<NavigationBarExample> createState() => _NavigationBarExampleState();
}

class _NavigationBarExampleState extends State<NavigationBarExample> {
  static final List<Widget> _pages = <Widget>[
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4()
  ];
  int _currentSelectedIndex = 0;
  void _onTabTapped(int index) {
    setState(() {
      _currentSelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom navigation bar"),
        backgroundColor: Colors.teal,
      ),
      body:  Center(child: _pages[_currentSelectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: const Color(0xFF1F41BB),
          selectedLabelStyle: const TextStyle(
            color: Colors.red,
            fontFamily: 'Poppins',
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
          unselectedItemColor: Colors.black54,
          currentIndex: _currentSelectedIndex,
          onTap: _onTabTapped,
          items: const [
            BottomNavigationBarItem(
              backgroundColor: Color(0xFFF4EFEF),
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              backgroundColor: Color(0xFFF4EFEF),
              icon: Icon(Icons.favorite),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              backgroundColor: Color(0xFFF4EFEF),
              icon: Icon(Icons.shopping_cart),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              backgroundColor: Color(0xFFF4EFEF),
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ]),
    );
  }
}
