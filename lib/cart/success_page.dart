import 'package:flutter/material.dart';
import 'package:sumic_online/components/bottom_nav_bar.dart';
import 'package:sumic_online/components/sumic_button.dart';
import 'package:sumic_online/components/text.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1EEF0F),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Center(
        child: SingleChildScrollView(
          
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

              
              SizedBox(
                width: 200,
                height: 36,
                child: SumicButton(
                  text: 'Continue Shopping',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const HomeScreen()));
                  },
                ),
              ),
              const SizedBox(height: 10), 

              
              Image.asset(
                'assets/images/sucex.png',
                width: MediaQuery.of(context).size.width, 
                height: MediaQuery.of(context).size.height *
                    0.6, 
                fit: BoxFit.cover, 
              ),
            ],
          ),
        ),
      ),
    );
  }
}
