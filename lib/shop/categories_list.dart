import 'package:flutter/material.dart';

class CategoriesTwo extends StatelessWidget {
  const CategoriesTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Categories',
          style: TextStyle(
            color: Color(0xFF013252),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16.0, bottom: 8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Choose category',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  title: const Text('Tops'),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Shirts & Blouses'),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Cardigans & Sweaters'),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Knitwear'),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Blazers'),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Outerwear'),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Pants'),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Jeans'),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Shorts'),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Skirts'),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Dresses'),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
