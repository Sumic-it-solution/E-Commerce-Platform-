import 'package:flutter/material.dart';

class SumicButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const SumicButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: 150,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF013252), 
        ),
        onPressed: onTap, 
        child: Text( 
          text,
          style: const TextStyle(
            color: Colors.white, 
            fontSize: 16, 
          ),
        ),
      ),
    );
  }
}
