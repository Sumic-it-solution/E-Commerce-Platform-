// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:sumic_online/components/appbar.dart';
import 'package:sumic_online/components/elevated_button.dart';
import 'package:sumic_online/components/text.dart';

class ProductCardPage extends StatelessWidget {
  const ProductCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Short Dress',
        backgroundColor: Colors.white,
        titleTextStyle: const TextStyle(color: Colors.black),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const ImageCarousel(),
                  const ProductDetails(),
                  SizedBox(
                    height: screenHeight * 0.1, // Adjust space for button
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Colors.white,
                height: 112,
                padding:
                    EdgeInsets.all(screenWidth * 0.04), // Responsive padding
                child: SizedBox(
                  height: screenHeight * 0.08, // Responsive height
                  child: Center(
                    child: CustomElevatedButton(
                      text: 'ADD TO CART',
                      onTap: () => Navigator.pushNamed(context, '/rate'),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageCarousel extends StatelessWidget {
  const ImageCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: PageView.builder(
        controller: PageController(viewportFraction: 1.0),
        itemCount: 3, // Number of images
        itemBuilder: (context, index) {
          final images = [
            'assets/images/womens_blouse.jpg',
            'assets/images/womens_shirt.jpg',
            'assets/images/women_pullover.jpg',
          ];
          return Container(
            height: 500,
            child: Image.asset(
              images[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.04), // Responsive padding
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
        Expanded(
          child: SizeSelectionButton(
            label: 'Select Size',
            onTap: () => _showBottomModal(context),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: SizeSelectionButton(
            label: 'Black',
            onTap: () {}, // Placeholder for color selection
          ),
        ),
      ],
    );
  }

  Row _buildRatingAndPriceRow() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            children: [
              Icon(Icons.star, color: Colors.yellow),
              SizedBox(width: 5),
              Text('4.5 (120 reviews)', style: TextStyle(color: Colors.grey)),
            ],
          ),
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
  const SizeSelectionButton({
    required this.label,
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label),
            const Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
    );
  }
}

// Function to show the size selection modal
void _showBottomModal(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizeSelectionModal(),
          const Divider(color: Colors.grey),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomText(
                    text: 'Size Info',
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
                IconButton(
                  onPressed: () => Navigator.pushNamed(context, '/rate'),
                  icon: const Icon(Icons.arrow_forward_ios_sharp),
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CustomElevatedButton(
                text: 'ADD TO CART',
                onTap: () {
                  // Your onTap logic here
                },
              ),
            ),
          ),
        ],
      );
    },
  );
}

class SizeSelectionModal extends StatefulWidget {
  const SizeSelectionModal({super.key});

  @override
  SizeSelectionModalState createState() => SizeSelectionModalState();
}

class SizeSelectionModalState extends State<SizeSelectionModal> {
  String selectedSize = '';

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width; // Get screen width
    return Container(
      width: double.infinity, // Cover the full width of the screen
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.stretch, // Stretch children to fill the width
        children: [
          const Text(
            'Select Size',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          _buildSizeSelectionRow(['XS', 'S', 'M'], screenWidth),
          const SizedBox(height: 15), // Space between size selection rows
          _buildSizeSelectionRow(['L', 'XL'], screenWidth),
        ],
      ),
    );
  }

  Row _buildSizeSelectionRow(List<String> sizes, double screenWidth) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start, // Evenly space buttons
      children: sizes.map((size) {
        return Padding(
          padding: const EdgeInsets.only(left: 10),
          child: _buildSizeButton(
            size: size,
            isSelected: selectedSize == size,
            onTap: () {
              setState(() {
                selectedSize = size; // Update selected size
              });
            },
            buttonWidth: 100, // Fixed width for each button
          ),
        );
      }).toList(),
    );
  }

  Widget _buildSizeButton({
    required String size,
    required bool isSelected,
    required VoidCallback onTap,
    required double buttonWidth,
  }) {
    return SizedBox(
      height: 40, // Fixed height
      width: buttonWidth, // Fixed width
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
}
