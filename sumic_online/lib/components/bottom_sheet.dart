import 'package:flutter/material.dart';

class SumicModalSheet extends StatelessWidget {
  final double height;
  final Widget child;

  const SumicModalSheet({
    super.key,
    required this.height,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width, // Set width to full screen width
      height: height, // Set height from parameter
      color: Colors.white, // Background color
      child: child, // Child components passed in
    );
  }
}
