// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sumic_online/category_card.dart';
import 'package:sumic_online/components/offer_card.dart';

class WomensTab extends StatelessWidget {
  const WomensTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      // List of categories
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: OfferCard(),
          
        ), // Special offer at the top
        CategoryCard(
          categoryName: 'New',
          imageAsset: 'assets/images/new_style.jpg',
          onTap: () => Navigator.pushNamed(context, '/categories2'),
        ),

        CategoryCard(
          categoryName: 'Clothes',
          imageAsset: 'assets/images/women_clothes.jpg',
          onTap: () => Navigator.pushNamed(context, '/categories2'),
        ),

        CategoryCard(
          categoryName: 'Shoes',
          imageAsset: 'assets/images/shoes.jpg',
          onTap: () => Navigator.pushNamed(context, '/categories2'),
        ),

        CategoryCard(
            categoryName: 'Accessories',
            imageAsset: 'assets/images/accessories.jpg',
            onTap: () => Navigator.pushNamed(context, '/categories2'),
            ),
      ],
    );
  }
}
