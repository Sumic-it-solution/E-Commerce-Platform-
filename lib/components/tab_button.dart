  import 'package:flutter/material.dart';

Widget buildTabButton(String title, int index) {
    return ElevatedButton(
      onPressed: () {
        
      },
      style: ElevatedButton.styleFrom(
        backgroundColor:
            const Color(0xFF013252), // Default color (no change on select)
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white, // Change text color when selected
        ),
      ),
    );
  }