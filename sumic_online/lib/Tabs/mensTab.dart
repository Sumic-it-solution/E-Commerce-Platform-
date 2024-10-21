// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sumic_online/category_card.dart';
import 'package:sumic_online/components/offer_card.dart';

class MensTab extends StatelessWidget {
  const MensTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const OfferCard(), 
        CategoryCard(
          categoryName: 'New',
          imageAsset: 'assets/images/men_new.jpg',
          onTap: () {},
        ),
        CategoryCard(
          categoryName: 'Clothes',
          imageAsset: 'assets/images/mens_cloth.jpg',
          onTap: () {},
        ),
        CategoryCard(
          categoryName: 'Shoes',
          imageAsset: 'assets/images/mens_shoes.jpg',
          onTap: () {},
        ),
        CategoryCard(
          categoryName: 'Accessories',
          imageAsset: 'assets/images/men_accessories.jpg',
          onTap: () {},
        ),
      ],
    );
  }
}
