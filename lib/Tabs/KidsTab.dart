// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sumic_online/CategoryCard.dart';
import 'package:sumic_online/components/offer_card.dart';

class KidsTab extends StatelessWidget {
  const KidsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const OfferCard(), 
        CategoryCard(
          categoryName: 'New',
          onTap: () {},
          imageAsset: 'assets/images/kids_newstyle.jpg',
        ),
        CategoryCard(
          categoryName: 'Clothes',
          imageAsset: 'assets/images/kids_clothes.jpg',
          onTap: () {},
        ),
        CategoryCard(
          categoryName: 'Shoes',
          imageAsset: 'assets/images/kids_shoes.jpg',
          onTap: () {},
        ),
        CategoryCard(
          categoryName: 'Accessories',
          imageAsset: 'assets/images/kids_accessories.jpg',
          onTap: () {},
        ),
      ],
    );
  }
}
