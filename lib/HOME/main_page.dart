// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Fashion Sale Section
          Stack(
            children: [
              Image.asset(
                'assets/images/women_clothes.jpg',
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Fashion sale',
                      style: TextStyle(
                        fontSize: 36,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Add your navigation or functionality here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF013252),
                      ),
                      child: const Text('Check',
                      style: TextStyle(color: Color(0xFF1EEF0F)),
                      
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // New Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: 10,),
                const Text(
                  'New',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xFF013252)),
                ),
                TextButton(
                  onPressed: () {
                    // Navigate to view all products
                  },
                  child: const Text('View all',
                  style: TextStyle(color: Colors.black),
                  
                   ),
                ),
              ],
              
            ),
          ),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ProductCard(
                  imageUrl: 'assets/images/women_pullover.jpg',
                  label: 'PullOver',
                ),
                ProductCard(
                  imageUrl: 'assets/images/womens_blouse.jpg',
                  label: 'Women Blouse',
                ),
                ProductCard(
                  imageUrl: 'assets/images/womens_shirt.jpg',
                  label: 'Women Shirt',
                ),
                // Add more ProductCards
              ],
            ),
          ),
        ],
      ),
      
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String label;

  const ProductCard({super.key, required this.imageUrl, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            height: 120,
            width: 150,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 8.0),
          Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
