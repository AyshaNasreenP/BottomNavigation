import 'package:flutter/material.dart';
import 'package:ladyla/valid.dart';

import 'Login.dart';


class Botnavi extends StatefulWidget {
  const Botnavi({super.key});

  @override
  State<Botnavi> createState() => _BotnaviState();
}

class _BotnaviState extends State<Botnavi> {

  int _index = 0 ;

  final pages = [
    Center(child: Text("data")),
    Login(),
    Login(),
  ];

  void tap(index)
  {
    setState(() {
      _index= index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.set_meal),label: "profile"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_basket),label:"Cart")
        ],
        currentIndex: _index,
        onTap: tap,

      ),

    );
  }
}



