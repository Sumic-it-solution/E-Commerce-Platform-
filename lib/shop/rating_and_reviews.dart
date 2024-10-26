// ignore_for_file: library_private_types_in_public_api, unused_field, unnecessary_nullable_for_final_variable_declarations

import 'package:flutter/material.dart';

class ReviewsPage extends StatelessWidget {
  const ReviewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '4.3',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                SizedBox(height: 8),
                Text(
                  '23 ratings',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ],
            ),
            const SizedBox(width: 16),
            Column(
              children: [
                _buildStarRow(5, Colors.green, 10),
                _buildStarRow(4, Colors.green, 3),
                _buildStarRow(3, Colors.green, 2),
                _buildStarRow(2, Colors.green, 1),
                _buildStarRow(1, Colors.green, 0),
              ],
            ),
            const SizedBox(width: 16),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('12', style: TextStyle(fontSize: 12)),
                Text('5', style: TextStyle(fontSize: 12)),
                Text('4', style: TextStyle(fontSize: 12)),
                Text('2', style: TextStyle(fontSize: 12)),
                Text('0', style: TextStyle(fontSize: 12)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static Widget _buildStarRow(int stars, Color color, int barWidth) {
    return Row(
      children: [
        SizedBox(
          width: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: List.generate(
              stars,
              (index) => const Icon(Icons.star, color: Colors.orange, size: 16),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Container(
          height: 8,
          width: barWidth * 10.0,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ],
    );
  }
}
