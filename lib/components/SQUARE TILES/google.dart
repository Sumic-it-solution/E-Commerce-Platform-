import 'package:flutter/material.dart';

class GoogleTile extends StatelessWidget {
  const GoogleTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(15),
      width: 80,
      height: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/google.png',
            height: 40,
          ),
        ],
      ),
    );
  }
}
