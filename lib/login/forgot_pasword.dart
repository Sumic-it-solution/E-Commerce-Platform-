import 'package:flutter/material.dart';
import 'package:sumic_online/components/elevated_button.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  String? _emailError;

  
  String? _validateEmail(String value) {
    String pattern =
        r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'; 
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'Not a valid email address. Should be your@email.com';
    }
    return null;
  }

  void _sendResetLink() {
    if (_formKey.currentState!.validate()) {
      
      print('Sending reset link to ${_emailController.text}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () {
                    Navigator.pop(context); 
                  },
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'Forgot Password',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Please, enter your email address. You will receive a link to create a new password via email.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        hintText: 'Email',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) => value == null || value.isEmpty
                          ? 'Please enter an email'
                          : _validateEmail(value),
                    ),
                  ),
                  if (_emailError != null) 
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        _emailError!,
                        style: const TextStyle(color: Colors.red),
                      ),
                    ),
                  const SizedBox(height: 30),
                  
                  Center(
                    child: CustomElevatedButton(
              text: 'send',
              onTap: () {
              },
            )
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
