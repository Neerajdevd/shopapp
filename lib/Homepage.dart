import 'package:flutter/material.dart';
import 'package:shopapp/cartpage.dart';

import 'package:shopapp/productlist.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentpage = 0;
  List<Widget> pages = const [ProductList(), Cart()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            selectedFontSize: 0,
            unselectedFontSize: 0,
            iconSize: 30,
            currentIndex: currentpage,
            backgroundColor: const Color.fromARGB(255, 7, 43, 72),
            onTap: (value) {
              setState(() {
                currentpage = value;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "",
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.blueGrey,
                  ),
                  label: "")
            ]),
        backgroundColor: const Color.fromARGB(255, 7, 43, 72),
        body: IndexedStack(
          index: currentpage,
          children: pages,
        ));
  }
}
