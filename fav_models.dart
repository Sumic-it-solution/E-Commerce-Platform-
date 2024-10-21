// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_super_parameters

import 'package:flutter/material.dart';


class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favorites',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0.5,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ChoiceChipWidget(label: 'Summer', selected: true),
                ChoiceChipWidget(label: 'T-Shirts', selected: false),
                ChoiceChipWidget(label: 'Shirts', selected: false),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.filter_list),
                    SizedBox(width: 4),
                    Text('Filters'),
                  ],
                ),
                Row(
                  children: [
                    Text('Price: lowest to high'),
                    SizedBox(width: 4),
                    Icon(Icons.sort),
                  ],
                ),
              ],
            ),
          ),
          Divider(thickness: 1),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(8.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 0.65,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return ProductCard(
                  imageUrl: 'https://via.placeholder.com/150', // Replace with product image URL
                  brand: index == 0 ? 'LIME' : 'Mango',
                  name: index == 0 ? 'Shirt' : 'Longsleeve Violeta',
                  color: index == 0 ? 'Blue' : 'Orange',
                  size: index == 0 ? 'L' : 'S',
                  price: index == 0 ? '10\$' : '46\$',
                  rating: index == 0 ? 4.5 : 4.8,
                  isFavorite: index != 2,
                  isNew: index == 1,
                  isSoldOut: index == 2,
                  discount: index == 3 ? 30 : null,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ChoiceChipWidget extends StatelessWidget {
  final String label;
  final bool selected;

  const ChoiceChipWidget({Key? key, required this.label, this.selected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(label),
      selected: selected,
      onSelected: (bool value) {},
      backgroundColor: Colors.grey[200],
      selectedColor: Colors.blue,
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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('$brand $name', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Color: $color, Size: $size'),
                    Row(
                      children: List.generate(5, (index) {
                        return Icon(
                          index < rating.round() ? Icons.star : Icons.star_border,
                          size: 16,
                          color: Colors.amber,
                        );
                      }),
                    ),
                    if (isSoldOut)
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          'Sorry, this item is currently sold out',
                          style: TextStyle(color: Colors.red, fontSize: 12),
                        ),
                      ),
                    SizedBox(height: 4),
                    Text(
                      price,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (isNew)
            Positioned(
              top: 8,
              left: 8,
              child: Container(
                color: Colors.blue,
                padding: const EdgeInsets.all(4),
                child: const Text(
                  'NEW',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
            ),
          if (discount != null)
            Positioned(
              top: 8,
              left: 8,
              child: Container(
                color: Colors.red,
                padding: EdgeInsets.all(4),
                child: Text(
                  '$discount% OFF',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
            ),
          Positioned(
            top: 8,
            right: 8,
            child: IconButton(
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: isFavorite ? Colors.red : null,
              ),
              onPressed: () {
                // Handle favorite action
              },
            ),
          ),
        ],
      ),
    );
  }
}
