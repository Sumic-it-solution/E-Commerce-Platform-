import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTabSelected;

  const Home({super.key, required this.selectedIndex, required this.onTabSelected});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home Page, Selected Index: $selectedIndex'), // Placeholder content
    );
  }
}
