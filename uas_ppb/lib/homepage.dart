import 'package:flutter/material.dart';
import 'package:uas_ppb/information.dart';
//import 'package:uas_ppb/detailScreen.dart';
import 'package:uas_ppb/test.dart';
//import 'package:uas_ppb/pesanan.dart';
import 'home.dart';
import 'detailScreen.dart';
import 'pesanan.dart';
// import 'test.dart';
// import 'pages/account.dart';
// import 'pages/reels.dart';
// import 'pages/search.dart';
// import 'pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    UserHome(),
    Information()
    //Pesanan(),
    //DetailScreen(),
    // UserSearch(),
    // UserReels(),
    // UserShop(),
    // UserAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: _navigateBottomNavBar,
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Menu"),
            BottomNavigationBarItem(
                icon: Icon(Icons.wallet), label: "Information"),
            // BottomNavigationBarItem(icon: Icon(Icons.key), label: "TEST"),
            // BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "shop"),
            // BottomNavigationBarItem(icon: Icon(Icons.person), label: "account"),
          ]),
    );
  }
}
