import 'package:flutter/material.dart';
import 'package:sumic_online/SHOP/catalog1.dart';

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
            onPressed: () {
              // Search action
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CatalogOne()));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    backgroundColor: const Color(0xFF013252),
                  ),
                  child: const Text(
                    "VIEW ALL ITEMS",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              )),
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
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/catalog1'),
                  child: const ListTile(
                    title: Text('Tops'),
                  ),
                ),
                const ListTile(
                  title: Text('Shirts & Blouses'),
                ),
                const ListTile(
                  title: Text('Cardigans & Sweaters'),
                ),
                const ListTile(
                  title: Text('Knitwear'),
                ),
                const ListTile(
                  title: Text('Blazers'),
                ),
                const ListTile(
                  title: Text('Outerwear'),
                ),
                const ListTile(
                  title: Text('Pants'),
                ),
                const ListTile(
                  title: Text('Jeans'),
                ),
                const ListTile(
                  title: Text('Shorts'),
                ),
                const ListTile(
                  title: Text('Skirts'),
                ),
                const ListTile(
                  title: Text('Dresses'),
                ),
              ],
            ),
          ),
          
        ],
      ),
      
       
    
    );
  }
}
