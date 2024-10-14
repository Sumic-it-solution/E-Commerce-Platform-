import 'package:flutter/material.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Color(0xFF013252), 
      child: ListTile(
        title: Center(
          child: Text(
            'Offer Sales',
            style: TextStyle(color: Colors.white),
          ),
        ),
        subtitle: Center(
          child: Text(
            'Up to 50% off',
            style: TextStyle(color: Colors.white70),
          ),
        ),
      ),
    );
  }
}
