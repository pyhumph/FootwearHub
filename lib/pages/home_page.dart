import 'package:flutter/material.dart';
import 'package:footwearhub/components/bottom_nav_bar.dart';
import 'package:footwearhub/pages/cart_page.dart';
import 'package:footwearhub/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
//this selected index is to control the bottom nav bar
int _selectedIndex = 0;

//this method will update our selected index 
//when the user tap on the bottom bar
void navigateBottomBar(int index) {
  setState(() {
    _selectedIndex = index;
  });
}

//pages to display 
final List<Widget> _pages = [
  //shop page
  const ShopPage(),

  //cart page
  const CartPage(),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}