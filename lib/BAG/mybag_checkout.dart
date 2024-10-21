import 'package:flutter/material.dart';

import 'package:sumiconlineapp/components/appbar.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Check Out',
        centerTitle: true,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Shipping Address
            const Text(
              'Shipping Address',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('Tayebwa Ricky\nKampala, Uganda'),
            TextButton(
              onPressed: () {
                // Add functionality to change address
              },
              child: const Text('Change'),
            ),
            const Divider(),

            // Payment
            const Text(
              'Payment',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Image.asset('assets/images/airtel.png', width: 40),
                const SizedBox(width: 10),
                Image.asset('assets/images/mastercard.png', width: 40),
                const SizedBox(width: 10),
                Image.asset('assets/images/visa.png', width: 40),
              ],
            ),
            TextButton(
              onPressed: () {
                // Add functionality to change payment method
              },
              child: const Text('Change'),
            ),
            const Divider(),

            // Delivery Method
            const Text(
              'Delivery Method',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('FedEx\n2-3 Days'),
            const SizedBox(height: 8),
            TextButton(
              onPressed: () {
                // Add functionality to change delivery method
              },
              child: const Text('Change'),
            ),
            const Divider(),

            // Order Summary
            const Text(
              'Order Summary',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('Order: 112\$'),
            const Text('Delivery: 15\$'),
            const Text('Summary: 127\$'),
            const SizedBox(height: 16),

            // Submit Order Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Add functionality to submit order
                },
                child: const Text('SUBMIT ORDER'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
