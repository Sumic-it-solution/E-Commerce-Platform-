// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:sumic_online/components/appbar.dart';
import 'package:sumic_online/components/elevated_button.dart';
import 'package:sumic_online/components/pdt_card.dart';
import 'package:sumic_online/SHOP/filters_page.dart';
import 'package:sumic_online/components/sumic_button.dart';
import 'package:sumic_online/components/text.dart';

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
    // Add more products as needed...
  ];

  bool _isLoading = false; // Loading indicator flag
  String selectedSize = ''; // Holds the selected size
  bool _isGridView = true; // Track if it's grid view or list view

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
        }
        _isLoading = false; // Stop loading
      });
    });
  }

// Add a variable to track the selected sort option
  String selectedSortOption = 'Popular'; // Default selected option

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
                      _buildSortOption('Popular'),
                      _buildSortOption('Newest'),
                      _buildSortOption('Customer Review'),
                      _buildSortOption('Price: Lowest to Highest'),
                      _buildSortOption('Price: Highest to Lowest'),
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

  Widget _buildSortOption(String option) {
    bool isSelected = selectedSortOption == option;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedSortOption = option;
          sortProducts(option);
        });
        Navigator.pop(context);
      },
      child: Container(
        color: isSelected ? const Color(0xFF013252) : Colors.white,
        child: ListTile(
          title: Text(
            option,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: '',
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.black,
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const CustomText(
                text: 'Women\'s Tops',
                color: Color(0xFF013252),
                fontSize: 25,
                fontWeight: FontWeight.bold),
            const SizedBox(height: 10),

            // categories buttons
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SumicButton(text: 'T-shirts', onTap: () {}),
                  const SizedBox(width: 5),
                  SumicButton(text: 'CropTops', onTap: () {}),
                  const SizedBox(width: 5),
                  SumicButton(text: 'Blouses', onTap: () {}),
                  const SizedBox(width: 5),
                  SumicButton(text: 'Sleeves', onTap: () {}),
                ],
              ),
            ),
            const SizedBox(height: 10),

            // Filter and Sort Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FiltersPage(),
                            ),
                          );
                        },
                        icon: const Icon(Icons.filter_list_rounded)),
                    const SizedBox(width: 5),
                    const CustomText(
                        text: 'Filters',
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w300),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: _showSortOptions,
                      icon: const Icon(Icons.sort_outlined),
                    ),
                    const CustomText(
                      text: 'Price: lowest to High',
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _isGridView = !_isGridView;
                    });
                  },
                  icon: Icon(
                    _isGridView ? Icons.grid_view_sharp : Icons.list,
                  ),
                ),
              ],
            ),

            // Loading Indicator
            if (_isLoading) const Center(child: CircularProgressIndicator()),

            // Product Grid or List
            if (!_isLoading)
              Expanded(
                child: _isGridView
                    ? GridView.builder(
                        padding: const EdgeInsets.all(16.0),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, // Number of columns
                          childAspectRatio:
                              0.65, // Adjusts the height and width ratio
                          crossAxisSpacing: 16.0,
                          mainAxisSpacing: 16.0,
                        ),
                        itemCount: products.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              _showSizeOptions();
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
                      )
                    : ListView.builder(
                        padding: const EdgeInsets.all(16.0),
                        itemCount: products.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              _showSizeOptions();
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Center(
                child: Text(
                  'Select Size',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
              _buildSizeOptions(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(
                      text: 'Size Info',
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w200),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios_outlined)),
                ],
              ),

              // Spacer to push the button to the bottom
              const Spacer(),

              // Button at the bottom
              CustomElevatedButton(
                onTap: () {
                  // Your button logic here
                },
                text: 'ADD TO CART',
              ),
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

  List<Widget> _buildSizeButtons(List<String> sizes) {
    return sizes
        .map(
          (size) => GestureDetector(
            onTap: () {
              setState(() {
                selectedSize = size;
              });
            },
            child: Container(
              height: 20,
              width: 80,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(
                  color: selectedSize == size
                      ? const Color(0xFF013252)
                      : Colors.grey,
                ),
                shape: BoxShape.rectangle,
              ),
              child: Text(
                size,
                style: TextStyle(
                  color: selectedSize == size
                      ? const Color(0xFF013252)
                      : Colors.black,
                ),
              ),
            ),
          ),
        )
        .toList();
  }
}
