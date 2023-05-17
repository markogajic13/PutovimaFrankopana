// ignore_for_file: avoid_unnecessary_containers, library_private_types_in_public_api

import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[700],
      height: 70,
      padding: const EdgeInsets.only(top: 10, bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildNavBarItem(
            icon: Icons.home,
            index: 1,
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/homePage');
            },
          ),
          _buildNavBarItem(
            icon: Icons.book,
            index: 2,
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/storyPage');
            },
          ),
          _buildNavBarItem(
            icon: Icons.quiz,
            index: 3,
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/quizPage');
            },
          ),
        ],
      ),
    );
  }

  Widget _buildNavBarItem({
    required IconData icon,
    required int index,
    required VoidCallback onPressed,
  }) {
    final isSelected = index == _selectedIndex;

    return InkWell(
      onTap: () {
        _onItemTapped(index);
        onPressed();
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        width: isSelected ? 60 : 50,
        height: 50,
        decoration: BoxDecoration(
          color: isSelected ? Colors.red.shade100 : Colors.red.shade600,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Icon(
          icon,
          color: Colors.white,
          size: isSelected ? 45 : 40,
        ),
      ),
    );
  }
}
