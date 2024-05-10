import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomBar extends StatelessWidget {
  Function(int)? onTab;
   BottomBar({super.key,required this.onTab});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
        onTabChange: (value) => onTab!(value),
        color: Colors.grey.shade600,
        activeColor: Colors.indigo,
        padding: EdgeInsets.all(20),
        tabs: [
          GButton(
            icon: Icons.home,
            text: "",
          ),
          GButton(
            icon: Icons.search,
            text: "",
          ),
          GButton(
            icon: Icons.bookmark,
            text: "",
          ),
          GButton(
            icon: Icons.download,
            text: "",
          ),
          GButton(
            icon: Icons.person,
            text: "",
          ),
        ],
      ),
    );
  }
}
