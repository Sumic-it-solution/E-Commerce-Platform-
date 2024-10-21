// ignore_for_file: file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:sumic_online/components/sumic_button.dart';
import 'package:sumic_online/components/text.dart';

class Main2Page extends StatelessWidget {
  const Main2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Street Clothes Banner
            Stack(
              children: [
                Image.asset(
                  'assets/images/womens_t-shirt.jpg', // Replace with your image URL or asset
                  width: double.infinity,
                  height: 250,
                  fit: BoxFit.cover,
                ),
                const Positioned(
                  bottom: 20,
                  left: 20,
                  child: CustomText(
                      text: 'Street clothes',
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),

            // Sale Section
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Sale',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {
                      // Navigate to view all sale products
                    },
                    child: const Text('View all'),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text('Super summer sale',
                  style: TextStyle(color: Colors.grey)),
            ),
            Container(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  SaleProductCard(
                    imageUrl: 'assets/images/awesome_dress.jpg',
                    discount: '-20%',
                    name: 'Evening Dress',
                    brand: 'Dorothy Perkins',
                    priceOld: 155,
                    priceNew: 125,
                    rating: 4.5,
                  ),
                  SaleProductCard(
                    imageUrl: 'assets/images/sports_dress.jpg',
                    discount: '-15%',
                    name: 'Sport Dress',
                    brand: 'Silby',
                    priceOld: 226,
                    priceNew: 195,
                    rating: 4.0,
                  ),
                  // Add more SaleProductCards
                ],
              ),
            ),

            // New Section
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'New',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {
                      // Navigate to view all new products
                    },
                    child: const CustomText(
                        text: 'View All',
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
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
                    imageUrl: 'assets/images/men_new.jpg',
                    label: 'New Arrival 1',
                  ),
                  ProductCard(
                    imageUrl: 'assets/images/new_style.jpg',
                    label: 'New Arrival 2',
                  ),
                  // Add more ProductCards
                ],
              ),
            ),
                      SumicButton(text: 'NEXT', onTap: ()=> Navigator.pushNamed(context, '/cropitem'),
)
          ],
        ),
      ),
    );
  }
}

class SaleProductCard extends StatelessWidget {
  final String imageUrl;
  final String discount;
  final String name;
  final String brand;
  final double priceOld;
  final double priceNew;
  final double rating;

  const SaleProductCard({
    super.key,
    required this.imageUrl,
    required this.discount,
    required this.name,
    required this.brand,
    required this.priceOld,
    required this.priceNew,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.network(imageUrl, height: 120, fit: BoxFit.cover),
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  color: Colors.red,
                  child: Text(
                    discount,
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            brand,
            style: const TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Text(
                '\$$priceNew',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 8),
              Text(
                '\$$priceOld',
                style: const TextStyle(
                  color: Colors.grey,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          ),
          Row(
            children: List.generate(
              rating.round(),
              (index) => const Icon(Icons.star, size: 16, color: Colors.orange),
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
          Image.network(
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
