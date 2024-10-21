// ignore_for_file: prefer_const_constructors, use_super_parameters, sort_child_properties_last

import 'package:flutter/material.dart';


/

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              Image.network(
                'https://via.placeholder.com/400', // Replace with your image URL
                height: 200,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'New',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProductItem(),
                  ProductItem(),
                ],
              ),
            ],
          ),
        ),
        SizeSelector(),
      ],
    );
  }
}

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 150,
          height: 200,
          color: Colors.grey[300],
          child: Center(
            child: Text('NEW'),
          ),
        ),
        SizedBox(height: 8),
        Text('Product Name'),
      ],
    );
  }
}

class SizeSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, -5),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Select size',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          const Wrap(
            spacing: 12,
            children: [
              SizeButton(size: 'XS'),
              SizeButton(size: 'S'),
              SizeButton(size: 'M'),
              SizeButton(size: 'L'),
              SizeButton(size: 'XL'),
            ],
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: () {
              // Implement size info action
            },
            child: const Text('Size info'),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // Implement add to favorites action
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 14, horizontal: 24), backgroundColor: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ), // Change to your preferred color
            ),
            child: Text('ADD TO FAVORITES'),
          ),
        ],
      ),
    );
  }
}

class SizeButton extends StatelessWidget {
  final String size;

  const SizeButton({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        // Handle size selection
      },
      child: Text(size),
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
