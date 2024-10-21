import 'package:flutter/material.dart';

class AppleTile extends StatelessWidget {
  const AppleTile({super.key});

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
            'assets/images/apple.png', 
            height: 40, 
          ),
        ],
      ),
    );
  }
}

