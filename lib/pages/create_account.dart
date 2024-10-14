import 'package:flutter/material.dart';
import 'package:sumic_online/components/SQUARE%20TILES/apple.dart';
import 'package:sumic_online/components/SQUARE%20TILES/facebook.dart';
import 'package:sumic_online/components/SQUARE%20TILES/google.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isPasswordVisible = false; // State to toggle password visibility
  bool _rememberMe = false; // State for the remember me checkbox

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 20.0, vertical: 30.0), // Reduced vertical padding
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center vertically
          children: [
            const Text(
              'Create your Account',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                prefixIcon: const Icon(Icons.email, color: Colors.grey),
                hintText: 'Email',
                hintStyle: const TextStyle(color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              obscureText: !_isPasswordVisible, // Toggle password visibility
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                prefixIcon:
                    const Icon(Icons.lock_outline_rounded, color: Colors.grey),
                hintText: 'Password',
                hintStyle: const TextStyle(color: Colors.grey),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible =
                          !_isPasswordVisible; // Toggle password visibility
                    });
                  },
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Centered Checkbox for Remember Me
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, // Center the row
                children: [
                  Checkbox(
                    value: _rememberMe,
                    onChanged: (value) {
                      setState(() {
                        _rememberMe = value!; // Update the checkbox state
                      });
                    },
                  ),
                  const Text(
                    'Remember Me',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                // Handle sign up action
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  child: const Center(
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Row(
              children: [
                // Left Divider
                Expanded(
                  child: Divider(
                    color: Colors.grey, // Divider color
                    thickness: 1, // Divider thickness
                  ),
                ),
                // Text in the middle
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'or continue with',
                    style: TextStyle(
                      color: Colors.black, // Text color
                      fontSize: 16, // Font size
                    ),
                  ),
                ),
                // Right Divider
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FacebookTile(),
                  GoogleTile(),
                  AppleTile(),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already Have An Account.',
                    style: TextStyle(
                      color: Colors.black, // Text color
                      fontSize: 15, // Font size
                    ),
                  ),
                  Text(
                    ' SignIn',
                    style: TextStyle(
                      color: Colors.black, // Text color
                      fontSize: 17,
                      fontWeight: FontWeight.bold, // Font size
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
