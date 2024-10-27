import 'package:flutter/material.dart';
import 'package:sumic_online/cart/payment_card.dart';
import 'package:sumic_online/cart/shipping_address_page.dart';
import 'package:sumic_online/cart/success_page.dart';
import 'package:sumic_online/components/appbar.dart';
import 'package:sumic_online/components/elevated_button.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Check Out',
        titleTextStyle: const TextStyle(
          color: Color(0xFF013252),
          fontSize: 18,
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF013252))),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              const Text(
                'Shipping Address',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Card(
                color: Colors.white,
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Tayebwa Ricky'),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ShippingAddress()));
                            },
                            child: const Text(
                              'Change',
                              style: TextStyle(color: Color(0xFF1EEF0F)),
                            ),
                          ),
                        ],
                      ),
                      const Text('Kampala, Uganda'),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 16),

              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Payment',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PaymentMethods()));
                    },
                    child: const Text(
                      'Change',
                      style: TextStyle(color: Color(0xFF1EEF0F)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Image.network('https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/airtel.png', width: 72, height: 39),
                  const SizedBox(width: 5),
                  Image.network('https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/mtn.png', width: 69, height: 39),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Image.network('https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/mastercard.png',
                      width: 70, height: 54),
                  const SizedBox(width: 10),
                  Image.network('https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/visa.png', width: 82, height: 61),
                ],
              ),

              const Text(
                'Delivery Method',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.white,
                    height: 72,
                    width: 100,
                    child: Image.network(
                      'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/fedex.png',
                      width: 61,
                      height: 17,
                    ),
                  ),
                  const SizedBox(width: 2),
                  Container(
                    color: Colors.white,
                    height: 72,
                    width: 100,
                    child: Image.network('https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/usps.png',
                        width: 82, height: 10.25),
                  ),
                  const SizedBox(width: 2),
                  Container(
                    color: Colors.white,
                    height: 72,
                    width: 100,
                    child: Image.network('https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/usps.png',
                        width: 71, height: 16),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              TextButton(
                onPressed: () {},
                child: const Text('Change'),
              ),
              const Divider(),

              
              const Text(
                'Order Summary',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8.0),

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Order:',
                      style: TextStyle(
                        color: Colors.grey,
                      )),
                  Text(' 112\$'),
                ],
              ),
              const SizedBox(height: 10),

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Delivery: '),
                  Text('15\$'),
                ],
              ),
              const SizedBox(height: 10),

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Summary: '),
                  Text('127\$'),
                ],
              ),
              const SizedBox(height: 16),

              
              Center(
                child: CustomElevatedButton(
                  text: 'SUBMIT ORDER',
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SuccessPage()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
