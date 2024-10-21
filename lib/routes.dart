import 'package:flutter/material.dart';
// Categories list page


import 'package:sumiconlineapp/categories_list.dart';
import 'package:sumiconlineapp/pages/catalog1.dart'; // Catalog 1





class RouteGenerator {
  // Generate routes based on named route settings
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Add arguments parameter if needed in future
    switch (settings.name) {
      
      
      case '/categories2':
        return MaterialPageRoute(
            builder: (_) => const CategoriesTwo()); // Categories Two
      case '/catalog1':
        return MaterialPageRoute(
            builder: (_) => const CatalogOne()); // Catalog One
      
      
      default:
        return _errorRoute(); // Error route if route doesn't exist
    }
  }

  // Error route for handling unknown routes
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: const Center(child: Text('Page not found!')),
      ),
    );
  }
}
