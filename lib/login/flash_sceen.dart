// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:sumic_online/login/signup_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToOnboarding();
  }

  void _navigateToOnboarding() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const OnboardingScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            // border: Border.all(
            //   color: Colors.black,
            //   width: 1,
            // ),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(10),
          child: Image.network('https://github.com/timothy-creater/sumiconline_images/blob/main/images/sumic_online.jpeg?raw=true'),
        ),
      ),
    );
  }
}

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  OnboardingScreenState createState() => OnboardingScreenState();
}

class OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<String> _texts = [
    "Start shopping your favorite\nproducts in minutes!",
    "Discover, save, and buy with\nease - anytime, anywhere!",
    "Secure checkout, seamless\nordering all at your fingertips!"
  ];

  final List<String> _images = [
    'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/shopping_man.jpg',
    'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/womens_t-shirt.jpg',
    'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/men_accessories.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemCount: _texts.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Image.network
                      (
                        _images[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                _texts[index],
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            _buildDots(index),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF013252),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 80, vertical: 15),
                                ),
                                onPressed: () {
                                  if (index < _texts.length - 1) {
                                    _pageController.animateToPage(
                                      index + 1,
                                      duration: const Duration(milliseconds: 300),
                                      curve: Curves.easeInOut,
                                    );
                                  } else {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const SignUpPage(),
                                      ),
                                    );
                                  }
                                },
                                child: Text(
                                  index == _texts.length - 1
                                      ? 'Get Started'
                                      : 'Next',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDots(int currentIndex) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(_texts.length, (index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          margin: const EdgeInsets.symmetric(horizontal: 5),
          height: 10,
          width: currentIndex == index ? 20 : 10,
          decoration: BoxDecoration(
            color: currentIndex == index ? const Color(0xFF013252) : Colors.grey,
            borderRadius: BorderRadius.circular(5),
          ),
        );
      }),
    );
  }
}
