import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onTap, 
   
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 40,
    width: 300,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          
          backgroundColor: const Color(0xFF013252), 
          padding: const EdgeInsets.symmetric(
              horizontal: 25, vertical: 10), 
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30), 
          ),
          elevation: 5, 
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white, 
            fontSize: 18, 
            fontWeight: FontWeight.bold, 
          ),
        ),
      ),
    );
  }
}
