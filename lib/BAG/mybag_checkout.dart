import 'package:flutter/material.dart';
import 'package:sumic_online/components/appbar.dart';

class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Check Out',
        centerTitle: true,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Shipping Address
            Text(
              'Shipping Address',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Tayebwa Ricky\nKampala, Uganda'),
            TextButton(
              onPressed: () {
                // Add functionality to change address
              },
              child: Text('Change'),
            ),
            Divider(),

            // Payment
            Text(
              'Payment',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Image.asset('assets/images/airtel.png', width: 40),
                SizedBox(width: 10),
                Image.asset('assets/images/mastercard.png', width: 40),
                SizedBox(width: 10),
                Image.asset('assets/images/visa.png', width: 40),
              ],
            ),
            TextButton(
              onPressed: () {
                // Add functionality to change payment method
              },
              child: Text('Change'),
            ),
            Divider(),

            // Delivery Method
            Text(
              'Delivery Method',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('FedEx\n2-3 Days'),
            SizedBox(height: 8),
            TextButton(
              onPressed: () {
                // Add functionality to change delivery method
              },
              child: Text('Change'),
            ),
            Divider(),

            // Order Summary
            Text(
              'Order Summary',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Order: 112\$'),
            Text('Delivery: 15\$'),
            Text('Summary: 127\$'),
            SizedBox(height: 16),

            // Submit Order Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Add functionality to submit order
                },
                child: Text('SUBMIT ORDER'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
