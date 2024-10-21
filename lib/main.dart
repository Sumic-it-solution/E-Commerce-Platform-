// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sumiconlineapp/BAG/mybag.dart';
import 'package:sumiconlineapp/pages/cart.dart';
import 'package:sumiconlineapp/pages/homescreen.dart';




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
      home: HomeScreen(),
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