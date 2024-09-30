import 'package:flutter/material.dart';
import 'package:sumiconlineapp/view/signup_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome() async {
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => SignUpPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Change background color if needed
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black, // Blue border color
              width: 1, // Border width
            ),
            borderRadius:
                BorderRadius.circular(10), // Optional: rounded corners
          ),
          padding: EdgeInsets.all(10), // Optional: padding inside the border
          child: Image.network(
            'https://sumiconline.com/wp-content/uploads/2023/03/Sumic-Online-New-Logo-01-scaled.jpg', // Change this to your logo path
            height: 100, // Adjust height as needed
            width: 100, // Adjust width as needed
          ),
        ),
      ),
    );
  }
}
