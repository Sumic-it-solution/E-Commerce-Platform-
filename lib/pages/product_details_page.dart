import 'package:flutter/material.dart';
import 'package:sumic_online/components/appbar.dart';
import 'package:sumic_online/components/elevated_button.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        backgroundColor: Colors.white,
        title: 'Short Dress',
        centerTitle: true,
        actions: [
          Icon(Icons.share),
        ],
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Stack(
        children: [
          const SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ImageCarousel(),
                ProductDetails(),
                SizedBox(height: 100), // Add space for the button at the bottom
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: CustomElevatedButton(text: 'ADD TO CART', onTap: () {}),
            ),
          ),
        ],
      ),
    );
  }
}

class ImageCarousel extends StatelessWidget {
  const ImageCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: PageView(
        children: [
          Image.asset('assets/images/womens_blouse.jpg', fit: BoxFit.cover),
          Image.asset('assets/images/womens_shirt.jpg', fit: BoxFit.cover),
          Image.asset('assets/images/women_pullover.jpg', fit: BoxFit.cover),
        ],
      ),
    );
  }
}

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSelectionRow(context),
          const SizedBox(height: 10),
          const Text('H&M',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('Short black dress', style: TextStyle(color: Colors.grey)),
          const SizedBox(height: 10),
          _buildRatingAndPriceRow(),
          const SizedBox(height: 10),
          const Text(
              'Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed neckline.'),
        ],
      ),
    );
  }

  Row _buildSelectionRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizeSelectionButton(
          label: 'Select Size',
          onTap: () => _showBottomModal(context), // Call dialog function
        ),
        SizeSelectionButton(
          label: 'Black',
          onTap: () {}, // You can implement the color selection here
        ),
      ],
    );
  }

  Row _buildRatingAndPriceRow() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(Icons.star, color: Colors.yellow),
            Text('4.5 (120 reviews)', style: TextStyle(color: Colors.grey)),
          ],
        ),
        Text('\$19.99',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
      ],
    );
  }
}

class SizeSelectionButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  const SizeSelectionButton(
      {required this.label, super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Use the passed onTap callback
      child: Container(
        width: 138,
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label),
          ],
        ),
      ),
    );
  }
}

// Function to show the size selection dialog with conditional styling
void _showBottomModal(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          // Track the selected size
          String selectedSize = '';

          return Container(
            height: 300,
            width: double.infinity, // Use full width
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Text('Select Size',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 15),
                // First Row with 3 Buttons: XS, S, M
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: ['XS', 'S', 'M'].map((size) {
                    return _buildSizeButton(
                      size: size,
                      isSelected: selectedSize == size,
                      onTap: () {
                        setState(() {
                          selectedSize = size;
                        });
                      },
                    );
                  }).toList(),
                ),
                const SizedBox(height: 15),
                // Second Row with 2 Buttons: L and XL
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _buildSizeButton(
                      size: 'L',
                      isSelected: selectedSize == 'L',
                      onTap: () {
                        setState(() {
                          selectedSize = 'L';
                        });
                      },
                    ),
                    const SizedBox(width: 16), // Adds space between L and XL
                    _buildSizeButton(
                      size: 'XL',
                      isSelected: selectedSize == 'XL',
                      onTap: () {
                        setState(() {
                          selectedSize = 'XL';
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      );
    },
  );
}

// Helper function to create size buttons with conditional styling
Widget _buildSizeButton({
  required String size,
  required bool isSelected,
  required VoidCallback onTap,
}) {
  return SizedBox(
    width: 100,
    height: 40,
    child: ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        foregroundColor: isSelected ? Colors.white : Colors.black,
        backgroundColor:
            isSelected ? const Color(0xFF013252) : Colors.grey[200],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
      ),
      child: Text(size),
    ),
  );
}
