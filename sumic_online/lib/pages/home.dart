import 'package:flutter/material.dart';
import 'package:sumic_online/home/visual_search.dart';

class Home extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTabSelected;

  const Home({super.key, required this.selectedIndex, required this.onTabSelected});

  @override
  Widget build(BuildContext context) {
    return const VisualSearch();
  }
}
