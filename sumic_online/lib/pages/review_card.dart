import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  final String userName;
  final int rating;
  final String date;
  final String review;

  const ReviewCard({
    super.key,
    required this.userName,
    required this.rating,
    required this.date,
    required this.review,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(userName,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(date, style: const TextStyle(color: Colors.grey)),
              ],
            ),
            const SizedBox(height: 8),
            
            const SizedBox(height: 8),
            Text(review),
          ],
        ),
      ),
    );
  }
}

