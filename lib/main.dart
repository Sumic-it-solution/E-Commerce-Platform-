// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sumic_online/BAG/mybag.dart';
import 'package:sumic_online/HOME/main_page.dart';
import 'package:sumic_online/pages/cart.dart';
// ignore: duplicate_ignore
// ignore: unused_import
import 'package:sumic_online/pages/homescreen.dart';

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
      home: MyBag(),
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