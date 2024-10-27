import 'package:flutter/material.dart';
import 'package:sumic_online/cart/shipping_address_page.dart';

import 'package:sumic_online/components/text.dart';
import 'package:sumic_online/profile/my_order.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:sumic_online/profile/settings_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File? _profileImage;

  Future<void> _pickImage() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _profileImage = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const CustomText(
              text: 'My Profile',
              fontSize: 25,
              color: Color(0xFF013252),
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 20),

            
            Row(
              children: [
                GestureDetector(
                  onTap: _pickImage, 
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: _profileImage != null
                        ? FileImage(_profileImage!)
                        : null,
                    child: _profileImage == null
                        ? const Icon(Icons.person, size: 40, color: Colors.grey)
                        : null,
                  ),
                ),
                const SizedBox(width: 16),
                
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tayebwa Ricky',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'tayebwaricky2020@gmail.com',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 24),

            
            Expanded(
              child: ListView(
                children: [
                  _buildProfileListItem(
                    title: 'My orders',
                    subtitle: 'You already have 12 orders',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MyOrderPage(),
                        ),
                      );
                    },
                  ),
                  _buildProfileListItem(
                    title: 'Shipping addresses',
                    subtitle: '3 addresses',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ShippingAddress(),
                        ),
                      );
                    },
                  ),
                  _buildProfileListItem(
                    title: 'Settings',
                    subtitle: 'Password, language, currency',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SettingsPage(),
                        ),
                      );
                    },
                  ),
                  _buildProfileListItem(
                    title: 'Promocodes',
                    subtitle: 'You have special promocodes',
                    onTap: () {},
                  ),
                  _buildProfileListItem(
                    title: 'My reviews',
                    subtitle: 'Reviews for 4 items',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  
  Widget _buildProfileListItem({
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold), 
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(
            fontWeight: FontWeight.normal), 
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: onTap,
    );
  }
}
