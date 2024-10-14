import 'package:flutter/material.dart';
import 'package:sumic_online/components/appbar.dart';
import 'package:sumic_online/components/elevated_button.dart';

class MyBag extends StatelessWidget {
  const MyBag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        actions: [Icon(Icons.search)],
        title: '',
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'My Bag',
              style: TextStyle(
                color: Color(0xFF013252),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  _buildItemCard('assets/images/bag_1.jpg', 'Bag 1',
                      'Color: Blue', 'Size: L', '51\$'),
                  _buildItemCard('assets/images/bag_2.jpg', 'Bag 2',
                      'Color: Gray', 'Size: M', '30\$'),
                  _buildItemCard('assets/images/bag_3.jpg', 'Bag 3',
                      'Color: Black', 'Size: M', '43\$'),
                ],
              ),
            ),
            const SizedBox(height: 6),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your promo code',
                hintStyle: const TextStyle(color: Colors.grey),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none, // No visible border
                  borderRadius: BorderRadius.circular(2.0),
                ),
              ),
            ),
            const SizedBox(height: 6),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total amount:',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text('124\$',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 9),
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 10.0), 
              child: SizedBox(
                width: 343,
                height: 48,
                child: CustomElevatedButton(text: 'CHECK OUT', onTap: (){}),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItemCard(
      String imagePath, String title, String color, String size, String price) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(0.0), // Remove padding from the Card
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // No horizontal padding for the image
            Image.asset(
              imagePath,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 10), // Space between image and text
            Expanded(
              // Use Expanded to allow flexible width
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Text(color),
                      const SizedBox(width: 12),
                      Text(size),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              icon: const Icon(Icons.remove), onPressed: () {}),
                          const Text('1'),
                          IconButton(
                              icon: const Icon(Icons.add), onPressed: () {}),
                        ],
                      ),
                      // Use Expanded for price text
                      Expanded(
                        child: Text(price,
                            textAlign: TextAlign
                                .end, // Align text to the end of the Row
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
