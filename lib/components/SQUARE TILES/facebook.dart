import 'package:flutter/material.dart';

class FacebookTile extends StatelessWidget {
  const FacebookTile({super.key});

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
            'assets/images/facebook.png',
            height: 40,
          ),
        ],
      ),
    );
  }
}
