// ignore_for_file: unreachable_switch_case

import 'package:flutter/material.dart';
import 'package:sumic_online/SHOP/categories_list.dart'; // Categories list page

import 'package:sumic_online/SHOP/catalog1.dart';
import 'package:sumic_online/SHOP/product_details_page.dart';
import 'package:sumic_online/SHOP/shop_page.dart';
import 'package:sumic_online/bag/add_shipping_address.dart';
import 'package:sumic_online/bag/my_bag_checkout.dart';
import 'package:sumic_online/bag/payment_card.dart';
import 'package:sumic_online/bag/shipping.dart';
import 'package:sumic_online/bag/success_page.dart';
import 'package:sumic_online/home/Main2.dart';
import 'package:sumic_online/home/crop_item.dart';
import 'package:sumic_online/home/main_page.dart';
import 'package:sumic_online/home/visual_search.dart';
import 'package:sumic_online/pages/favorites_page.dart';
import 'package:sumic_online/rate_and_review.dart'; // Catalog 1





class RouteGenerator {
  // Generate routes based on named route settings
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Add arguments parameter if needed in future
    switch (settings.name) {
       case '/':
        return MaterialPageRoute(
            builder: (_) => const VisualSearch());
             case '/cropitem':
        return MaterialPageRoute(
            builder: (_) => const CropTheItem());
             case '/mainpage':
        return MaterialPageRoute(
            builder: (_) => const MainPage());
             case '/main2':
        return MaterialPageRoute(
            builder: (_) => const Main2Page());
              case '/favs':
        return MaterialPageRoute(
            builder: (_) => const FavoritesPage());

             case '/success':
        return MaterialPageRoute(
            builder: (_) => const SuccessPage());
             case '/shipping':
        return MaterialPageRoute(
            builder: (_) => const ShippingAddress());
              case '/add':
        return MaterialPageRoute(
            builder: (_) => const AddShippingAddressPage());
             case '/checkout':
        return MaterialPageRoute(
            builder: (_) => const CheckoutPage());
              case '/payment':
        return MaterialPageRoute(
            builder: (_) => const PaymentMethods());
            
             case '/shop':
        return MaterialPageRoute(
            builder: (_) => const ShopPage());
             case '/productcardpage':
        return MaterialPageRoute(
            builder: (_) => const ProductCardPage());
             case '/':
        return MaterialPageRoute(
            builder: (_) => const CategoriesTwo());
            case '/rate':
        return MaterialPageRoute(
            builder: (_) => const RatingsAndReviews());
      
      
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
