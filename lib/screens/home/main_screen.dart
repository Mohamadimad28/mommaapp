import 'package:flutter/material.dart';
import 'package:mommaapp/modles/handbagstap.dart';
import 'package:mommaapp/screens/home/bottomnavigationbarscreens/cart_screen.dart';
import 'package:mommaapp/screens/home/bottomnavigationbarscreens/home_screen.dart';

import '../../modles/bn_items.dart';
import 'bottomnavigationbarscreens/more_screen.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);
  @override
  State<MainScreen> createState() => _MainScreenState();
}


class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<BnItem> _bnitem = <BnItem>[
    BnItem(title: 'Home', widget: HomeScreen()),
    BnItem(title: 'Cart', widget: CartScreen()),
    BnItem(title: 'More', widget: MoreScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        title: Text(
          'Home',
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.black,
          ),
        ],
      ),
      body: _bnitem[_currentIndex].widget,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        selectedIconTheme: const IconThemeData(
          color: Color(0xFF6A90F2),
        ),
        selectedItemColor: Color(0xFF6A90F2),
        unselectedItemColor: Colors.black26,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 12,
          letterSpacing: 2,
        ),
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 12,
          letterSpacing: 0,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            activeIcon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_vert_outlined),
            activeIcon: Icon(Icons.more_vert),
            label: 'More',
          ),
        ],
      ),
    );
  }
}
