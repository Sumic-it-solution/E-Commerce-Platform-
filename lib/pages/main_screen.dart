// ignore_for_file: avoid_types_as_parameter_names, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:sumic_online/components/bottom_nav_bar.dart';
import 'package:sumic_online/pages/bagPage.dart';
import 'package:sumic_online/pages/favoritesPage.dart';
import 'package:sumic_online/pages/home.dart';
import 'package:sumic_online/pages/profilePage.dart';
import 'package:sumic_online/pages/shop_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  // List of pages to navigate between
  final List<Widget> _pages;

  _MainScreenState()
      : _pages = [
          Home(selectedIndex: 0, onTabSelected: (int) {}), // Update here
          const ShopPage(),
          const BagPage(),
          const FavoritesPage(),
          const ProfilePage(),
        ];

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Show the selected page
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onTabSelected: _onTabSelected,
      ),
    );
  }
}
