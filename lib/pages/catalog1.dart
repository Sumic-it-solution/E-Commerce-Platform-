// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:sumic_online/components/appbar.dart';
import 'package:sumic_online/components/pdt_card.dart';
import 'package:sumic_online/pages/filters_page.dart';

class CatalogOne extends StatefulWidget {
  const CatalogOne({super.key});

  @override
  _CatalogOneState createState() => _CatalogOneState();
}

class _CatalogOneState extends State<CatalogOne> {
  List<Map<String, dynamic>> products = [
    {
      "name": "T-Shirt SPANISH",
      "price": 9,
      "image": 'assets/images/women_pullover.jpg',
      "rating": 4.5,
      "reviews": 3,
      "brand": 'Mango'
    },
    {
      "name": "Blouse",
      "price": 14,
      "image": 'assets/images/womens_blouse.jpg',
      "rating": 4.0,
      "reviews": 20,
      "brand": 'Dorothy Perkins'
    },
    {
      "name": "T-Shirt SPANISH",
      "price": 9,
      "image": 'assets/images/women_pullover.jpg',
      "rating": 4.5,
      "reviews": 3,
      "brand": 'Mango'
    },
    {
      "name": "T-Shirt SPANISH",
      "price": 9,
      "image": 'assets/images/women_pullover.jpg',
      "rating": 4.5,
      "reviews": 3,
      "brand": 'Mango'
    },
    {
      "name": "T-Shirt SPANISH",
      "price": 9,
      "image": 'assets/images/women_pullover.jpg',
      "rating": 4.5,
      "reviews": 3,
      "brand": 'Mango'
    },
    {
      "name": "T-Shirt SPANISH",
      "price": 9,
      "image": 'assets/images/women_pullover.jpg',
      "rating": 4.5,
      "reviews": 3,
      "brand": 'Mango'
    },
    {
      "name": "T-Shirt SPANISH",
      "price": 9,
      "image": 'assets/images/women_pullover.jpg',
      "rating": 4.5,
      "reviews": 3,
      "brand": 'Mango'
    },
    {
      "name": "T-Shirt SPANISH",
      "price": 9,
      "image": 'assets/images/women_pullover.jpg',
      "rating": 4.5,
      "reviews": 3,
      "brand": 'Mango'
    },
    // Add more products as needed...
  ];

  bool _isLoading = false; // Loading indicator flag
  String selectedSize = ''; // Holds the selected size

  void sortProducts(String criterion) {
    setState(() {
      _isLoading = true; // Start loading
    });

    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        switch (criterion) {
          case 'Price: Lowest to Highest':
            products.sort((a, b) => a["price"].compareTo(b["price"]));
            break;
          case 'Price: Highest to Lowest':
            products.sort((a, b) => b["price"].compareTo(a["price"]));
            break;
          // Additional sorting criteria can be added here.
        }
        _isLoading = false; // Stop loading
      });
    });
  }

  void _showSortOptions() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * 0.5,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Sort By',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: ListView(
                    children: [
                      ListTile(
                        title: const Text('Popular'),
                        onTap: () {
                          // Handle popular sorting
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        title: const Text('Newest'),
                        onTap: () {
                          // Handle newest sorting
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        title: const Text('Customer Review'),
                        onTap: () {
                          // Handle customer review sorting
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        title: const Text('Price: Lowest to Highest'),
                        onTap: () {
                          sortProducts('Price: Lowest to Highest');
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        title: const Text('Price: Highest to Lowest'),
                        onTap: () {
                          sortProducts('Price: Highest to Lowest');
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Women\'s Tops',
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // Filter and Sort Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    const Icon(Icons.filter_alt_rounded),
                    const SizedBox(width: 6),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FiltersPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'Filters',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text("Sort By:"),
                    TextButton(
                      onPressed: _showSortOptions,
                      child: const Text(
                        "Select",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(width: 8),
                    IconButton(
                      icon: const Icon(Icons.sort),
                      onPressed: () {
                        _showSizeOptions();
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Loading Indicator
          if (_isLoading) const Center(child: CircularProgressIndicator()),

          // Product Grid
          if (!_isLoading)
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(16.0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns
                  childAspectRatio: 0.65, // Adjusts the height and width ratio
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      // Your tap logic here
                    },
                    child: ProductCard(
                      name: products[index]["name"],
                      price: products[index]["price"],
                      imagePath: products[index]["image"],
                      rating: products[index]["rating"],
                      reviews: products[index]["reviews"],
                      brand: products[index]["brand"],
                    ),
                  );
                },
              ),
            ),
        ],
      ),

    );
  }

  void _showSizeOptions() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 368,
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Text(
                'Select Size',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              _buildSizeOptions(),
            ],
          ),
        );
      },
    );
  }

  Widget _buildSizeOptions() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: _buildSizeButtons(['XS', 'S', 'M']),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: _buildSizeButtons(['L', 'XL']),
        ),
      ],
    );
  }

  List<Widget> _buildSizeButtons(List<String> sizesToBuild) {
    return sizesToBuild.map((size) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedSize = size;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: selectedSize == size ? Colors.purple : Colors.grey,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
          child: Text(
            size,
            style: TextStyle(
              color: selectedSize == size ? Colors.purple : Colors.black,
              fontSize: 16,
            ),
          ),
        ),
      );
    }).toList();
  }
}
