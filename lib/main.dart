// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';

import 'package:sumic_online/shop/shop_page.dart';
import 'package:sumic_online/login/flash_sceen.dart'

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sumic_Online',
      theme: ThemeData(
        primaryColor: const Color(0xFF1EEF0F),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF1EEF0F),
          secondary: const Color(0xFF013252),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: Color(0xFF1EEF0F),
        ),
      ),
      home: SplashScreen(),
    );
  }
}
