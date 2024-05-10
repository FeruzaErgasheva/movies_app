import 'package:flutter/material.dart';
import 'package:movie_app/components/bottombar.dart';
import 'package:movie_app/screens/download.dart';
import 'package:movie_app/screens/home.dart';
import 'package:movie_app/screens/label.dart';
import 'package:movie_app/screens/profile.dart';
import 'package:movie_app/screens/search.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List _pages = [
    HomePage(),
    SearchPage(),
    LabelPage(),
    DownloadPage(),
    ProfilePage()
  ];
  int _selectedIndex = 0;

  void onTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 8, 49),
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 14, 21, 61).withOpacity(0.8),
          ),
          child: BottomBar(
            onTab: (index) => onTab(index),
          )),
    );
  }
}
