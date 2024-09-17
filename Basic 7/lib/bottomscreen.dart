import 'package:flutter/material.dart';
import 'package:simplysufi/firstscreen.dart';
import 'package:simplysufi/fourthscreen.dart';
import 'package:simplysufi/secondscreen.dart';
import 'package:simplysufi/thirdscreen.dart';

class bottomscreen extends StatefulWidget {
  const bottomscreen({super.key});

  @override
  State<bottomscreen> createState() => _bottomscreenState();
}

class _bottomscreenState extends State<bottomscreen> {
  int myindex = 0;
  List<Widget> screen = [
    first(),
    second(),
    third(),
    fourth(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: myindex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Deals"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Order"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
          backgroundColor: Colors.white,
          iconSize: 30,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          onTap: (index) {
            setState(() {
              myindex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
        ),
        body: screen.elementAt(myindex),
      ),
    );
  }
}
