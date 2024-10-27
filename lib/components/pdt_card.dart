import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final int price;
  final String imagePath;
  final double rating;
  final int reviews;
  final String brand;
 

  const ProductCard({
    super.key,
    required this.name,
    required this.price,
    required this.imagePath,
    required this.rating,
    required this.reviews,
    required this.brand, required void Function() onTap,
    
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Image.asset(
                  imagePath,
                  height: 120,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                
                IconButton(
                  icon: const Icon(Icons.favorite_border, color: Colors.white),
                  onPressed: () {
                    
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "\$ $price",
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                const Icon(Icons.star, color: Colors.amber, size: 14),
                const SizedBox(width: 4),
                Text('$rating ($reviews Reviews)'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
