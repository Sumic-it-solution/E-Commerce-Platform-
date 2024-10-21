// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FilterChip(label: Text('Summer'), onSelected: (bool value) {}),
              FilterChip(label: Text('T-Shirts'), onSelected: (bool value) {}),
              FilterChip(label: Text('Shirts'), onSelected: (bool value) {}),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Row(
                children: [
                  Icon(Icons.filter_list),
                  SizedBox(width: 8),
                  Text('Filters'),
                ],
              ),
              Row(
                children: [
                  Text('Price: lowest to high'),
                  SizedBox(width: 8),
                  Icon(Icons.sort),
                ],
              ),
            ],
          ),
        ),
        Divider(),
        Expanded(
          child: ListView(
            children: const [
              ProductCard(
                imageUrl: 'https://via.placeholder.com/150', // Replace with product image URL
                brand: 'LIME',
                name: 'Shirt',
                color: 'Blue',
                size: 'L',
                price: '32\$',
                rating: 4.5,
                isFavorite: true,
              ),
              ProductCard(
                imageUrl: 'https://via.placeholder.com/150', // Replace with product image URL
                brand: 'Mango',
                name: 'Longsleeve Violeta',
                color: 'Orange',
                size: 'S',
                price: '46\$',
                rating: 4.8,
                isFavorite: false,
                isNew: true,
              ),
              ProductCard(
                imageUrl: 'https://via.placeholder.com/150', // Replace with product image URL
                brand: 'Oliver',
                name: 'Shirt',
                color: 'Gray',
                size: 'L',
                price: '52\$',
                rating: 3.5,
                isFavorite: false,
                isSoldOut: true,
              ),
              ProductCard(
                imageUrl: 'https://via.placeholder.com/150', // Replace with product image URL
                brand: 'B-Shirts',
                name: 'T-Shirt',
                color: 'Black',
                size: 'S',
                price: '30\$',
                rating: 4.0,
                isFavorite: false,
                discount: 30,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String brand;
  final String name;
  final String color;
  final String size;
  final String price;
  final double rating;
  final bool isFavorite;
  final bool isNew;
  final bool isSoldOut;
  final int? discount;

  const ProductCard({
    Key? key,
    required this.imageUrl,
    required this.brand,
    required this.name,
    required this.color,
    required this.size,
    required this.price,
    required this.rating,
    this.isFavorite = false,
    this.isNew = false,
    this.isSoldOut = false,
    this.discount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        leading: Stack(
          children: [
            Image.network(imageUrl, width: 60, height: 60, fit: BoxFit.cover),
            if (isNew)
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  color: Colors.blue,
                  padding: EdgeInsets.all(4),
                  child: Text(
                    'NEW',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              ),
            if (discount != null)
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  color: Colors.red,
                  padding: EdgeInsets.all(4),
                  child: Text(
                    '$discount% OFF',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              ),
          ],
        ),
        title: Text('$brand $name'),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Color: $color, Size: $size'),
            Row(
              children: List.generate(5, (index) {
                return Icon(
                  index < rating ? Icons.star : Icons.star_border,
                  size: 16,
                  color: Colors.amber,
                );
              }),
            ),
            if (isSoldOut)
              Text(
                'Sorry, this item is currently sold out',
                style: TextStyle(color: Colors.red, fontSize: 12),
              ),
          ],
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: isFavorite ? Colors.red : null,
              ),
              onPressed: () {
                // Handle favorite action
              },
            ),
            Text(
              price,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
