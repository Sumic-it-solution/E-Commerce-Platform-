// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:sumic_online/Tabs/KidsTab.dart';
import 'package:sumic_online/Tabs/mensTab.dart';
import 'package:sumic_online/Tabs/womenTab.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
// Initial selected index for the BottomNavBar


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Categories'),
          centerTitle: true,
          bottom: const TabBar(
            // The tabs
            tabs: [
              Tab(text: 'Women'),
              Tab(text: 'Men'),
              Tab(text: 'Kids'),
            ],
          ),
        ),
        body: const TabBarView(
          // Corresponding tab views
          children: [
            WomensTab(),
            MensTab(),
            KidsTab(),
          ],
        ),
        
      ),
    );
  }
}
