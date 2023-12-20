import 'package:flutter/material.dart';
import 'package:module2_flutter/bottom_navigationbar/sample1/cart_page.dart';
import 'package:module2_flutter/bottom_navigationbar/sample1/favourites_page.dart';
import 'package:module2_flutter/bottom_navigationbar/sample1/home_page.dart';
import 'package:module2_flutter/bottom_navigationbar/sample1/settings_page.dart';

class MyNavigation extends StatefulWidget {
  const MyNavigation({super.key});

  @override
  State<MyNavigation> createState() => _MyNavigationState();
}

class _MyNavigationState extends State<MyNavigation> {
  static final List<Widget> _pages = <Widget>[
    const HomePage(),
    const FavouritesPage(),
    const CartPage(),
    const SettingsPage(),
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
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "V I N E E T H K A R T",
          style: TextStyle(color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w900),
        ),
      ),
      body:  Center(child: _pages[_currentSelectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          selectedLabelStyle: const TextStyle(
            color: Colors.black,
            fontFamily: 'Poppins',
            fontSize: 15,
            fontWeight: FontWeight.w900,
          ),
          unselectedItemColor: Colors.black54,
          currentIndex: _currentSelectedIndex,
          onTap: _onTabTapped,
          items: const [
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.home, color: Colors.white),
              label: "HOME",
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.favorite, color: Colors.white),
              label: "WISHLIST",
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.shopping_cart, color: Colors.white),
              label: "CART",
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.settings, color: Colors.white),
              label: "SETTINGS",
            ),
          ]),
    );
  }
}




