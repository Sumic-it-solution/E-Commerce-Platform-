import 'package:flutter/material.dart';

class FiltersPage extends StatefulWidget {
  const FiltersPage({super.key});

  @override
  _FiltersPageState createState() => _FiltersPageState();
}

class _FiltersPageState extends State<FiltersPage> {
  double _minPrice = 78;
  double _maxPrice = 143;
  String? _selectedSize;
  String? _selectedCategory;

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
            Container(
              color: Colors.white,
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
            const SizedBox(height: 60),
            Container(
              padding: const EdgeInsets.only(top: 10),
              margin: const EdgeInsets.only(top: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(color: Colors.black26, width: 1.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, -1),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(
                          context); // Dismiss the filter page without applying
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
                      Navigator.pop(context, {
                        'minPrice': _minPrice,
                        'maxPrice': _maxPrice,
                        'size': _selectedSize,
                        'category': _selectedCategory,
                      });
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
      onTap: () {},
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
        backgroundColor: isSelected ? const Color(0xFF013252) : Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      child: Text(
        category,
        style: TextStyle(color: isSelected ? Colors.white : Colors.black),
      ),
    );
  }
}
