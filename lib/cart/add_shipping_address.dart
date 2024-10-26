

import 'package:flutter/material.dart';


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
        iconTheme: const IconThemeData(color: Color(0xFF013252)), 
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Full name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

             
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Address',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'City',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

             
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'State/Province/Region',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Zip Code / Postal Code',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Country',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.arrow_forward_ios), 
                ),
              ),
              const Spacer(),

              
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF013252), 
                    padding: const EdgeInsets.symmetric(vertical: 16.0), 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0), 
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
              
            ],
          ),
        ),
      ),
    );
  }
}


