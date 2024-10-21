// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String categoryName;
  final String imageAsset;
  final Function() onTap;

  const CategoryCard({
    super.key,
    required this.categoryName,
    required this.imageAsset,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: 100, // You can adjust the height as needed
          child: Row(
            children: [
              // The text takes half of the available space
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    categoryName,
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              ),
              // The image takes the other half
              Expanded(
                flex: 1,
                child: Image.asset(
                  imageAsset,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
