// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import 'package:sumiconlineapp/pages/filters_list.dart';

class FiltersPage extends StatefulWidget {
  const FiltersPage({super.key});

  @override
  _FiltersPageState createState() => _FiltersPageState();
}

class _FiltersPageState extends State<FiltersPage> {
  double _minPrice = 78;
  double _maxPrice = 143;
  String? _selectedSize; // Variable to store the selected size
  String? _selectedCategory; // Variable to store the selected category

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.0,
        title: const Text(
          'Filters',
          style: TextStyle(
            color: Color(0xFF013252),
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF013252),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Price range',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            RangeSlider(
              values: RangeValues(_minPrice, _maxPrice),
              min: 0,
              max: 200,
              divisions: 20,
              labels: RangeLabels(
                  '\$${_minPrice.round()}', '\$${_maxPrice.round()}'),
              onChanged: (RangeValues values) {
                setState(() {
                  _minPrice = values.start;
                  _maxPrice = values.end;
                });
              },
              activeColor: const Color(0xFF013252),
              inactiveColor: const Color(0xFF013252).withOpacity(0.5),
            ),
            const SizedBox(height: 20),
            const Text(
              'Colors',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Wrap(
              spacing: 10,
              children: [
                _colorOption(Colors.black),
                _colorOption(Colors.white),
                _colorOption(const Color(0xFF1EEF0F)),
                _colorOption(Colors.grey),
                _colorOption(Colors.brown),
                _colorOption(const Color(0xFF013252)),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'Sizes',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _sizeButton('XS'),
                _sizeButton('S'),
                _sizeButton('M'),
                _sizeButton('L'),
                _sizeButton('XL'),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Category',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            // Wrap for category buttons
            Container(
              color: Colors.white, // White background for buttons
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  _categoryButton('All'),
                  _categoryButton('Women'),
                  _categoryButton('Men'),
                  _categoryButton('Boys'),
                  _categoryButton('Girls'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Brand',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BrandsPage()));
              },
              child: const Row(
                children: [
                  Text(
                    'adidas, D&G, Jack & Jones, Oliver',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFF013252),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 60),
            Container(
              padding: const EdgeInsets.only(top: 10),
              margin: const EdgeInsets.only(top: 20), // Add top margin here
              decoration: const BoxDecoration(
                color: Colors.white, // Container background color
                border: Border(
                  top: BorderSide(
                    color: Colors.black26, // Subtle black color for top border
                    width: 1.0, // Border width
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12, // Soft shadow color
                    offset: Offset(0, -1), // Shadow towards top
                    blurRadius: 4, // Slight blur for shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle Discard action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    child: const Text(
                      'Cancel',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle Apply action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF013252),
                    ),
                    child: const Text(
                      'Apply',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _colorOption(Color color) {
    return GestureDetector(
      onTap: () {
        // Handle color selection
      },
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black, width: 1),
        ),
      ),
    );
  }

  Widget _sizeButton(String size) {
    bool isSelected = _selectedSize == size;

    return ElevatedButton(
      onPressed: () {
        setState(() {
          _selectedSize = size;
        });
      },
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(50, 50),
        backgroundColor:
            isSelected ? const Color(0xFF013252) : Colors.grey[200],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
      ),
      child: Text(
        size,
        style: TextStyle(color: isSelected ? Colors.white : Colors.black),
      ),
    );
  }

  Widget _categoryButton(String category) {
    bool isSelected = _selectedCategory == category;

    return ElevatedButton(
      onPressed: () {
        setState(() {
          _selectedCategory = category;
        });
      },
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(80, 40), // Adjusted size for category buttons
        padding: EdgeInsets.zero, // Remove default padding
        backgroundColor: isSelected ? const Color(0xFF013252) : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        visualDensity: VisualDensity.compact, // Tightens button's space
        tapTargetSize: MaterialTapTargetSize.shrinkWrap, // Shrink tap area
      ),
      child: Text(
        category,
        style: TextStyle(
          fontSize: 14, // Smaller font for the button
          color: isSelected ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
