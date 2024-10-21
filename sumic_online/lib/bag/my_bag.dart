import 'package:flutter/material.dart';
import 'package:sumic_online/components/appbar.dart';
import 'package:sumic_online/components/elevated_button.dart';
import 'package:sumic_online/components/sumic_button.dart';
import 'package:sumic_online/components/text.dart';

class MyBag extends StatelessWidget {
  const MyBag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        actions: [Icon(Icons.search, color: Colors.black,), ],
        title: '',
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CustomText(
                text: 'Bag',
                fontSize: 35,
                color: Color(0xFF013252),
                fontWeight: FontWeight.bold),
           
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
            TextField(
              onTap: () => _showPromoCodes(context),
              decoration: InputDecoration(
                hintText: 'Enter your promo code',
                hintStyle: const TextStyle(color: Colors.grey),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(2.0),
                ),
                suffixIcon: IconButton(
                  onPressed: () => _showPromoCodes(context),
                  icon: const CircleAvatar(
                    backgroundColor: Color(0xFF013252),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ),
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
              padding: const EdgeInsets.only(bottom: 10.0),
              child: SizedBox(
                width: 343,
                height: 48,
                child: CustomElevatedButton(text: 'CHECK OUT', onTap: ()=> Navigator.pushNamed(context, '/checkout')),
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
        padding: const EdgeInsets.all(0.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 10),
            Expanded(
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
                      Expanded(
                        child: Text(price,
                            textAlign: TextAlign.end,
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

  void _showPromoCodes(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CustomText(
                    text: 'Your Promo Codes',
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w900),
                const SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter promo code',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                _buildPromoCodeCard('10%', 'Promo Code 1', 'CODE1', 5),
                _buildPromoCodeCard('15%', 'Promo Code 2', 'CODE2', 2),
                _buildPromoCodeCard('20%', 'Promo Code 3', 'CODE3', 10),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildPromoCodeCard(
      String percentage, String title, String code, int daysRemaining) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: [
          Container(
            width: 50,
            color: const Color(0xFF013252),
            child: Center(
              child: Text(
                percentage,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(code),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('$daysRemaining days remaining',
                  style: const TextStyle(color: Colors.grey)),
              const SizedBox(height: 5),
              SumicButton(text: 'APPLY', onTap: () {})
            ],
          ),
        ],
      ),
    );
  }
}
