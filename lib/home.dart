


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grinder/pages/account.dart';
import 'package:grinder/pages/browse.dart';
import 'package:grinder/pages/faves.dart';
import 'package:grinder/pages/inbox.dart';
import 'package:grinder/pages/store.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//navigate
  int _selectedIndex =0;
  void _navigatBottomNavBar(int index){
    setState((){
      _selectedIndex = index;
    });
  }
  //nav to diff pages
  final List<Widget> _childern = [
  //imported
  //RegisterPage(),
  UserHome(),
  UserSearch(),
  UserFav(),
  UserShope(),
  UserAccount(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _childern [_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,

        onTap: _navigatBottomNavBar,

        type: BottomNavigationBarType.fixed,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_max),label: 'Browse'),
          BottomNavigationBarItem(icon: Icon(Icons.inbox),label: 'Inbox'),
          BottomNavigationBarItem(icon: Icon(Icons.star),label: 'Faves'),
          BottomNavigationBarItem(icon: Icon(Icons.store),label: 'Store'),
        ],

      ),
    );
  }
}

