// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:sumic_online/components/sumic_button.dart';

class AddShippingAddressPage extends StatefulWidget {
  const AddShippingAddressPage({super.key});

  @override
  _AddShippingAddressPageState createState() => _AddShippingAddressPageState();
}

class _AddShippingAddressPageState extends State<AddShippingAddressPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Adding Shipping Address',
          style: TextStyle(
            color: Color(0xFF013252),
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xFF013252)), // For back arrow color
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Full Name Field
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Full name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              // Address Field
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Address',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              // City Field
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'City',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              // State/Province/Region Field
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'State/Province/Region',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              // Zip Code Field
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Zip Code / Postal Code',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              // Country Field
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Country',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.arrow_forward_ios), // Right arrow icon
                ),
              ),
              const Spacer(),

              // Save Address Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Save address action
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF013252), // Dark blue color
                    padding: const EdgeInsets.symmetric(vertical: 16.0), // Button height
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0), // Rounded corners
                    ),
                  ),
                  child: const Text(
                    'SAVE ADDRESS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SumicButton(text: 'next', onTap: ()=> Navigator.pushNamed(context, '/success')),
            ],
          ),
        ),
      ),
    );
  }
}


