import 'package:flutter/material.dart';

class RatingBars extends StatelessWidget {
  final List<double> ratings;

  const RatingBars({super.key, required this.ratings});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: ratings.asMap().entries.map((entry) {
        int index = entry.key;
        double rating = entry.value;

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Row(
            children: [
              Text('${5 - index}'), // 5 stars to 1 star rating labels
              const SizedBox(width: 8),
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300], // Background bar
                      ),
                    ),
                    Container(
                      width: rating * 100, // Bar length based on rating value
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.amber, // Filled bar color
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              Text('${(rating * 100).toInt()}%'),
            ],
          ),
        );
      }).toList(),
    );
  }
}
