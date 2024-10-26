import 'package:flutter/material.dart';
import 'package:sumic_online/cart/add_shipping_address.dart';
import 'package:sumic_online/components/text.dart';

class ShippingAddress extends StatefulWidget {
  const ShippingAddress({super.key});

  @override
  ShippingAddressState createState() => ShippingAddressState();
}

class ShippingAddressState extends State<ShippingAddress> {
  List<Address> addresses = [
    Address(
      name: 'Nankonyoli Olivia',
      street: 'Kamuli Road',
      city: 'Kireka',
      state: 'Kampala',
      zipCode: '91709',
      country: 'Uganda',
      isDefault: true,
    ),
    Address(
      name: 'Kiddu Bill Micheal',
      street: 'Kusattu',
      city: 'Takajjumge',
      state: 'Mukono',
      zipCode: '0000',
      country: 'Uganda',
      isDefault: false,
    ),
    Address(
      name: 'Mukoya Timothy',
      street: 'Nakawa Ave',
      city: 'Nakawa',
      state: 'Kampala',
      zipCode: '91712',
      country: 'Uganda',
      isDefault: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Shipping Addresses',
          style: TextStyle(
            color: Color(0xFF013252),
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
            color: Color(0xFF013252)), 
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: addresses.length,
          itemBuilder: (context, index) {
            final address = addresses[index];
            return SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 2,
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  address.name,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  '${address.street}\n${address.city}, ${address.state} ${address.zipCode}, ${address.country}',
                                  style: const TextStyle(fontSize: 14),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ],
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              
                            },
                            child: const CustomText(
                                text: 'Edit',
                                fontSize: 14,
                                color: Color(0xFF008000),
                                fontWeight: FontWeight.w200),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Checkbox(
                            value: address.isDefault,
                            onChanged: (bool? value) {
                              setState(() {
                                address.isDefault = value ?? false;
                              });
                            },
                            activeColor:
                                const Color(0xFF013252), 
                            checkColor: Colors.white, 
                            side: const BorderSide(
                                color: Colors
                                    .black), 
                          ),
                          const CustomText(
                            text: 'Use as the shipping address',
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AddShippingAddressPage(),
          ),
        ),
        backgroundColor: const Color(0XFF013252),
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}

class Address {
  String name;
  String street;
  String city;
  String state;
  String zipCode;
  String country;
  bool isDefault;

  Address({
    required this.name,
    required this.street,
    required this.city,
    required this.state,
    required this.zipCode,
    required this.country,
    required this.isDefault,
  });
}
