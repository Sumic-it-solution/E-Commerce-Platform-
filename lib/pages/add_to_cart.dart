// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:sumic_online/components/elevated_button.dart';
import 'package:sumic_online/components/pdt_card.dart';
import 'package:sumic_online/pages/filters_page.dart';

class CatalogTwo extends StatefulWidget {
  const CatalogTwo({super.key});

  @override
  _CatalogTwoState createState() => _CatalogTwoState();
}

class _CatalogTwoState extends State<CatalogTwo> {
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
      "name": "Shirt",
      "price": 12,
      "image": 'assets/images/womens_t-shirt.jpg',
      "rating": 3.5,
      "reviews": 10,
      "brand": 'Mango'
    },
    {
      "name": "Light Blouse",
      "price": 15,
      "image": 'assets/images/womens_shirt.jpg',
      "rating": 4.5,
      "reviews": 25,
      "brand": 'Dorothy Perkins'
    }
  ];

  bool _isLoading = false; // Loading indicator flag

  void sortProducts(String criterion) {
    setState(() {
      _isLoading = true; // Start loading
    });

    // Simulate a delay for sorting
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        switch (criterion) {
          case 'Price: Lowest to Highest':
            products.sort((a, b) => a["price"].compareTo(b["price"]));
            break;
          case 'Price: Highest to Lowest':
            products.sort((a, b) => b["price"].compareTo(a["price"]));
            break;

          // Uncomment and implement if you have 'Newest' and 'Popular' data
          // case 'Newest':
          //   break;
          // case 'Popular':
          //   break;
        }
        _isLoading = false; // Stop loading
      });
    });
  }

  /*void _addToCart(String productName) {
    // Functionality to add to cart
    // You can replace this with your cart management logic
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('$productName added to cart!')),
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Women's Tops",
          style: TextStyle(color: Color(0xFF013252), fontSize: 25),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Implement search functionality here
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Category Buttons
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: CustomElevatedButton(
                      text: 'T-shirts',
                      onTap: () {
                        // Navigate to T-shirts category
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  CustomElevatedButton(
                    text: 'Crop-Tops',
                    onTap: () {
                      // Navigate to Crop-Tops category
                    },
                  ),
                  const SizedBox(width: 10),
                  CustomElevatedButton(
                    text: 'Blouses',
                    onTap: () {
                      // Navigate to Blouses category
                    },
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
          ),
          // Filter and Sort Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                builder: (context) => const FiltersPage()));
                      },
                      child: const Text(
                        'Filters',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Text("Price:"),
                    Text(
                      "Highest to Lowest",
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(width: 8),
                    Icon(Icons.sort),
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
                  return ProductCard(
                    name: products[index]["name"],
                    price: products[index]["price"],
                    imagePath: products[index]["image"],
                    rating: products[index]["rating"],
                    reviews: products[index]["reviews"],
                    brand: products[index]["brand"],
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
