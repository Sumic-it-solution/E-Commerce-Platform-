import 'package:flutter/material.dart';

class WhiteButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const WhiteButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white, 
          elevation: 5,          
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), 
          ),
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: const TextStyle(color: Colors.black), 
        ),
      ),
    );
  }
}
