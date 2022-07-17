import 'package:addtocart/screens/account.dart';
import 'package:addtocart/screens/cart.dart';
import 'package:addtocart/screens/category.dart';
import 'package:addtocart/screens/home_screen.dart';
import 'package:addtocart/screens/wishlist.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

class NavigationWidget extends StatefulWidget {
  const NavigationWidget({super.key});

  @override
  State<NavigationWidget> createState() => _NavigationWidgetState();
}

class _NavigationWidgetState extends State<NavigationWidget> {
  int _currentIndex = 0;
  myScrenControll() {
    if (_currentIndex == 0) {
      return const MyHomeScreen();
    }
    if (_currentIndex == 1) {
      return const Wishlist();
    }
    if (_currentIndex == 2) {
      return const Category();
    }
    if (_currentIndex == 3) {
      return const MyAccount();
    }
    if (_currentIndex == 4) {
      return const AddToCart();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(actions: const []),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomNavigationBar(
          iconSize: 30.0,
          selectedColor: const Color(0xff040307),
          strokeColor: const Color(0x30040307),
          unSelectedColor: const Color(0xffacacac),
          backgroundColor: Colors.white,
          items: [
            CustomNavigationBarItem(
              icon: const Icon(Icons.home),
              title: const Text("Home"),
            ),
            CustomNavigationBarItem(
              icon: const Icon(Icons.bookmark),
              title: const Text("Wishlist"),
            ),
            CustomNavigationBarItem(
              icon: const Icon(Icons.category),
              title: const Text("Category"),
            ),
            CustomNavigationBarItem(
              icon: const Icon(Icons.person),
              title: const Text("Account"),
            ),
            CustomNavigationBarItem(
              icon: const Icon(Icons.shopify_sharp),
              title: const Text("Cart"),
            ),
          ],
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        body: myScrenControll());
  }
}
