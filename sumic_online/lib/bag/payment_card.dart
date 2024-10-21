// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:sumic_online/components/appbar.dart';
import 'package:sumic_online/components/elevated_button.dart';
import 'package:sumic_online/components/sumic_button.dart';
import 'package:sumic_online/components/text.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  int? _selectedCard; // Variable to store the selected card index
  bool _isDefaultCardChecked = false; // Track the checkbox state for new card

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Color(0xFF013252),
        ),
        title: 'Payment Methods',
        titleTextStyle: TextStyle(
          color: Color(0xFF013252),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          // Make the Column scrollable
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(
                text: 'Your Payment Cards',
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(height: 16),

              // Esther Payment Card UI
              SizedBox(
                width: 344,
                height: 216,
                child: Card(
                  elevation: 4,
                  color: const Color(0xFF222222),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 16, right: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/logos/chip.jpg',
                            width: 32, height: 24),
                        const SizedBox(height: 20),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                                text: '****',
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                            CustomText(
                                text: '****',
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                            CustomText(
                                text: '****',
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                            CustomText(
                                text: '3947',
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ],
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Card holder information
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                      text: 'Card holder Name',
                                      fontSize: 10,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                  SizedBox(height: 4),
                                  CustomText(
                                      text: 'Kafuko Esther.J',
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ],
                              ),
                              // Expiry date information
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                      text: 'Expiry date',
                                      fontSize: 10,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                  SizedBox(height: 4),
                                  CustomText(
                                      text: '05/23',
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ],
                              ),
                              // Payment card logo
                              Image.asset('assets/logos/mastercard.png',
                                  width: 32, height: 25),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),

              // Default payment method checkbox for Esther's card
              Row(
                children: [
                  Checkbox(
                    value: _selectedCard == 0, // Check if this card is selected
                    onChanged: (bool? value) {
                      setState(() {
                        _selectedCard = value! ? 0 : null; // Toggle selection
                      });
                    },
                    activeColor: const Color(0xFF013252),
                    checkColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  const CustomText(
                    text: 'Use as default payment method',
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // Bill Payment Card UI
              SizedBox(
                width: 344,
                height: 216,
                child: Card(
                  elevation: 4,
                  color: const Color(0xFF9B9B9B),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 16, right: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Image.asset('assets/logos/visa.png',
                              width: 50, height: 16),
                        ),
                        const SizedBox(height: 20),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                                text: '****',
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                            CustomText(
                                text: '****',
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                            CustomText(
                                text: '****',
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                            CustomText(
                                text: '4546',
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ],
                        ),
                        Image.asset('assets/logos/chip.jpg',
                            width: 32, height: 24),
                        const Spacer(),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Card holder information
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                      text: 'Card holder Name',
                                      fontSize: 10,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                  SizedBox(height: 4),
                                  CustomText(
                                      text: 'Kiddu Bill Micheal',
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ],
                              ),
                              // Expiry date information
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                      text: 'Expiry date',
                                      fontSize: 10,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                  SizedBox(height: 4),
                                  CustomText(
                                      text: '11/22',
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Default payment method checkbox for Bill's card
              Row(
                children: [
                  Checkbox(
                    value: _selectedCard == 1, // Check if this card is selected
                    onChanged: (bool? value) {
                      setState(() {
                        _selectedCard = value! ? 1 : null; // Toggle selection
                      });
                    },
                    activeColor: const Color(0xFF013252),
                    checkColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  const CustomText(
                    text: 'Use as default payment method',
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
              const SizedBox(height: 20), // Added spacing

              // Floating action button to add new card
              Align(
                alignment: Alignment.centerRight,
                child: FloatingActionButton(
                  onPressed: () {
                    _showAddCardModal(context); // Show bottom modal sheet
                  },
                  backgroundColor: const Color(0xFF013252),
                  foregroundColor: Colors.white,
                  child: const Icon(Icons.add),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Method to show the bottom modal sheet for adding a new card
  void _showAddCardModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
      isScrollControlled: true, // Allow full screen height
      builder: (BuildContext context) {
        return Container(
          height: 572, // Set the height of the modal
          width: double.infinity, // Set the width of the modal
          color: Colors.white, // Background color of the modal
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              const CustomText(
                text: 'Add New Payment Method',
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(height: 20),
              // Input fields for card details
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Card Number',
                      labelStyle: TextStyle(color: Colors.grey),
                      hintText: 'xxxx xxxx xxxx xxxx',
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  )),
              const SizedBox(height: 20),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Card Holder Name',
                      labelStyle: TextStyle(color: Colors.grey),
                      hintText: 'Full Name',
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  )),
              const SizedBox(height: 20),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Expiry Date',
                      labelStyle: TextStyle(color: Colors.grey),
                      hintText: 'MM/YY',
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  )),
              const SizedBox(height: 20),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'CVV',
                      labelStyle: TextStyle(color: Colors.grey),
                      hintText: 'xxx',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(3))),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                      ),
                    ),
                  )),
              const SizedBox(height: 20),
              // Checkbox for setting the card as default
              Row(
                children: [
                  Checkbox(
                    value: _isDefaultCardChecked, // Track checkbox state
                    onChanged: (bool? value) {
                      setState(() {
                        _isDefaultCardChecked = value!; // Update checkbox state
                      });
                    },
                    activeColor: const Color(0xFF013252),
                    checkColor: Colors.white,
                  ),
                  const CustomText(
                    text: 'Set as default payment method',
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
              const Spacer(),
              // Button to add card
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: CustomElevatedButton(text: 'ADD CARD', onTap: () {}),
              ),
              SumicButton(text: 'next', onTap: ()=> Navigator.pushNamed(context, '/shipping'))
            ],
          ),
        );
      },
    );
  }
}
