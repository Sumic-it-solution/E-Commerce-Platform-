import 'package:flutter/material.dart';
import 'package:sumic_online/components/text.dart';

class FindingSimilarResults extends StatelessWidget {
  const FindingSimilarResults({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.search,
              color: Color(0xFF1EEF0F),
              size: 60.0,
            ),
            SizedBox(height: 100),
            CustomText(
              text: 'Finding Similar Results',
              fontSize: 20,
              color: Color(0xFF013252),
              fontWeight: FontWeight.bold,
            ), // The closing bracket for CustomText is now correctly placed
          ],
        ),
      ),
    );
  }
}
