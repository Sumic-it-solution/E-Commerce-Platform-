// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sumic_online/SHOP/catalog1.dart';

import 'package:sumic_online/bag/my_bag.dart';
import 'package:sumic_online/bag/my_bag_checkout.dart';
import 'package:sumic_online/bag/payment_card.dart';
import 'package:sumic_online/bag/shipping.dart';
import 'package:sumic_online/bag/success_page.dart';
import 'package:sumic_online/home/Main2.dart';
import 'package:sumic_online/home/crop_item.dart';
import 'package:sumic_online/home/main_page.dart';
import 'package:sumic_online/home/search_by_photo.dart';
import 'package:sumic_online/home/visual_finding_similar_results.dart';
import 'package:sumic_online/home/visual_search.dart';
import 'package:sumic_online/SHOP/product_details_page.dart';
import 'package:sumic_online/pages/cart.dart';
// ignore: duplicate_ignore
// ignore: unused_import
import 'package:sumic_online/pages/home_screen.dart';

import 'package:sumic_online/routes.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Cart()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  get text => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sumic_Online',
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
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
      home: const HomeScreen(),
    );
  }
}

  /*onGenerateRoute: RouteGenerator.generateRoute,
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
      home: const HomeScreen(),
    );*/