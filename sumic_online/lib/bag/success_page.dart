import 'package:flutter/material.dart';
import 'package:sumic_online/components/sumic_button.dart';
import 'package:sumic_online/components/text.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: SingleChildScrollView(
          // Allows for scrolling if the content is too large
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomText(
                text: 'Success !',
                fontSize: 34,
                color: Color(0xFF013252),
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 16.0),
              const CustomText(
                text:
                    'Your order will be delivered soon.\nThank you for choosing our app!',
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(height: 10.0),

              // Continue Shopping Button
              SizedBox(
                width: 200,
                height: 36,
                child: SumicButton(
                  text: 'Continue Shopping',
                  onTap: () {},
                ),
              ),
              const SizedBox(height: 10), // Adjusted space for the image

              // Asset Image
              Image.asset(
                'assets/images/sucex.png',
                width: MediaQuery.of(context).size.width, // Full width
                height: MediaQuery.of(context).size.height *
                    0.6, // Increased to 60% of screen height
                fit: BoxFit.cover, // Fill the space, may crop image
              ),
            ],
          ),
        ),
      ),
    );
  }
}
