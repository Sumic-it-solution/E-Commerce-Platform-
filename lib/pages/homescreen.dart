// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:sumic_online/components/bottom_nav_bar.dart';
import 'package:sumic_online/pages/bagPage.dart';
import 'package:sumic_online/pages/favoritesPage.dart';
import 'package:sumic_online/pages/home.dart'; // Ensure this Home widget accepts parameters
import 'package:sumic_online/pages/profilePage.dart';
import 'package:sumic_online/pages/shop_page.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0; // Initial selected index

  // List of pages for bottom navigation
  final List<Widget> _pages = [
    Home(selectedIndex: 0, onTabSelected: (index) {}), // Placeholder
    const ShopPage(),
    const BagPage(),
    const FavoritesPage(),
    const ProfilePage(),
  ];

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _selectedIndex == 0
          ? Home(selectedIndex: _selectedIndex, onTabSelected: _onTabSelected)
          : _pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex, // Pass the current index
        onTabSelected: _onTabSelected, // Pass the callback
      ),
    );
  }
}
