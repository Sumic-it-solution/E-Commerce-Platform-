import 'package:flutter/material.dart';
import 'package:sumic_online/shop/categories_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Stack(
              children: [
                Image.network(
                  'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/success.jpg',
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                const Positioned(
                  bottom: 20,
                  left: 20,
                  child: Text(
                    'Fashion Sale',
                    style: TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Categories',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF013252)),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CategoriesTwo()));
                    },
                    child: const Text('View all',
                        style: TextStyle(color: Colors.black)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ProductCard(
                    imageUrl: 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/womens_t-shirt.jpg',
                    label: 'Clothes',
                  ),
                  ProductCard(
                    imageUrl: 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/men_accessories.jpg',
                    label: 'Acccessories',
                  ),
                  ProductCard(
                    imageUrl: 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/men_accessories.jpg',
                    label: 'Women Shirt',
                  ),
                ],
              ),
            ),

            
            _buildSectionHeader(context, 'Sale', 'View all', () {}),
            _buildSaleProductList(),

            
            _buildSectionHeader(context, 'New Products', 'View all', () {}),
            _buildNewProductList(),

            
            _buildSectionHeader(context, 'Top Selling', 'View all', () {}),
            _buildTopSellingProductList(),
          ],
        ),
      ),
    );
  }

  
  Widget _buildSectionHeader(BuildContext context, String title,
      String actionText, VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: onTap,
            child: Text(actionText),
          ),
        ],
      ),
    );
  }

  
  Widget _buildSaleProductList() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        height: 250,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            SaleProductCard(
              imageUrl: 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/men_hoodies.jpg',
              discount: '-20%',
              name: 'Evening Dress',
              brand: 'Dorothy Perkins',
              category: 'Dresses',
              priceOld: 155,
              priceNew: 125,
              rating: 4.5,
              ratingCount: 10,
            ),
            SaleProductCard(
              imageUrl: 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/men_new.jpg',
              discount: '-10%',
              name: 'Winter Pullover',
              brand: 'Fashion Line',
              category: 'Sweaters',
              priceOld: 70,
              priceNew: 63,
              rating: 4.0,
              ratingCount: 8,
            ),
            SaleProductCard(
              imageUrl: 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/shoes.jpg',
              discount: '-15%',
              name: 'Casual Shirt',
              brand: 'Topwear',
              category: 'Shirts',
              priceOld: 50,
              priceNew: 42,
              rating: 4.3,
              ratingCount: 15,
            ),
            SaleProductCard(
              imageUrl: 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/men_hoodies.jpg',
              discount: '-15%',
              name: 'Casual Shirt',
              brand: 'Topwear',
              category: 'Shirts',
              priceOld: 50,
              priceNew: 42,
              rating: 4.3,
              ratingCount: 15,
            ),
            SaleProductCard(
              imageUrl: 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/women_clothes.jpg',
              discount: '-15%',
              name: 'Casual Shirt',
              brand: 'Topwear',
              category: 'Shirts',
              priceOld: 50,
              priceNew: 42,
              rating: 4.3,
              ratingCount: 15,
            ),
            SaleProductCard(
              imageUrl: 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/shopping_man.jpg',
              discount: '-15%',
              name: 'Casual Shirt',
              brand: 'Topwear',
              category: 'Shirts',
              priceOld: 50,
              priceNew: 42,
              rating: 4.3,
              ratingCount: 15,
            ),
            SaleProductCard(
              imageUrl: 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/mens_shoes.jpg',
              discount: '-15%',
              name: 'Casual Shirt',
              brand: 'Topwear',
              category: 'Shirts',
              priceOld: 50,
              priceNew: 42,
              rating: 4.3,
              ratingCount: 15,
            ),
          ],
        ),
      ),
    );
  }

  
  Widget _buildNewProductList() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        height: 250,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            NewProductCard(
              imageUrl: 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/mens_shoes.jpg',
              label: 'New Arrival Dress',
              category: 'Dresses',
              priceOld: 100,
              priceNew: 85,
              rating: 4.7,
              ratingCount: 12,
            ),
            NewProductCard(
              imageUrl: 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/womens_t-shirt.jpg',
              label: 'Casual Wear',
              category: 'Tops',
              priceOld: 65,
              priceNew: 55,
              rating: 4.6,
              ratingCount: 9,
            ),
            NewProductCard(
              imageUrl: 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/accessories.jpg',
              label: 'Trendy Top',
              category: 'Tops',
              priceOld: 75,
              priceNew: 65,
              rating: 4.8,
              ratingCount: 14,
            ),
            NewProductCard(
              imageUrl: 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/mens_shoes.jpg',
              label: 'Shoes',
              category: 'Shoes',
              priceOld: 75,
              priceNew: 65,
              rating: 4.8,
              ratingCount: 14,
            ),
            NewProductCard(
              imageUrl: 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/womens_t-shirt.jpg',
              label: 'Trendy Top',
              category: 'Tops',
              priceOld: 75,
              priceNew: 65,
              rating: 4.8,
              ratingCount: 14,
            ),
            NewProductCard(
              imageUrl: 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/womens_t-shirt.jpg',
              label: 'Trendy Top',
              category: 'Tops',
              priceOld: 75,
              priceNew: 65,
              rating: 4.8,
              ratingCount: 14,
            ),
          ],
        ),
      ),
    );
  }

  
  Widget _buildTopSellingProductList() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        height: 250,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            TopSellingProductCard(
              imageUrl: 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/shopping_man.jpg',
              label: 'Top Selling Shoes',
              category: 'Footwear',
              priceOld: 120,
              priceNew: 100,
              rating: 4.8,
              ratingCount: 15,
            ),
            TopSellingProductCard(
              imageUrl: 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/women_clothes.jpg',
              label: 'Stylish Sneakers',
              category: 'Footwear',
              priceOld: 95,
              priceNew: 85,
              rating: 4.5,
              ratingCount: 12,
            ),
            TopSellingProductCard(
              imageUrl: 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/shoes.jpg',
              label: 'Leather Boots',
              category: 'Footwear',
              priceOld: 150,
              priceNew: 135,
              rating: 4.9,
              ratingCount: 18,
            ),
            TopSellingProductCard(
              imageUrl: 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/men_new.jpg',
              label: 'Leather Boots',
              category: 'Footwear',
              priceOld: 150,
              priceNew: 135,
              rating: 4.9,
              ratingCount: 18,
            ),
            TopSellingProductCard(
              imageUrl: 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/men_new.jpg',
              label: 'Leather Boots',
              category: 'Footwear',
              priceOld: 150,
              priceNew: 135,
              rating: 4.9,
              ratingCount: 18,
            ),
            TopSellingProductCard(
              imageUrl: 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/men_hoodies.jpg',
              label: 'Leather Boots',
              category: 'Footwear',
              priceOld: 150,
              priceNew: 135,
              rating: 4.9,
              ratingCount: 18,
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String label;

  const ProductCard({super.key, required this.imageUrl, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imageUrl,
            height: 120,
            width: 150,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 8.0),
          Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

class SaleProductCard extends StatelessWidget {
  final String imageUrl;
  final String discount;
  final String name;
  final String brand;
  final String category;
  final double priceOld;
  final double priceNew;
  final double rating;
  final int ratingCount;

  const SaleProductCard({
    super.key,
    required this.imageUrl,
    required this.discount,
    required this.name,
    required this.brand,
    required this.category,
    required this.priceOld,
    required this.priceNew,
    required this.rating,
    required this.ratingCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      margin: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.network(imageUrl, height: 120, fit: BoxFit.cover),
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 2),
                      decoration: BoxDecoration(
                        color: const Color(0xFF013252),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(discount,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 10)),
                    ),
                  ),
                  Positioned(
                    bottom: 8,
                    right: 8,
                    child: InkWell(
                      onTap: () {
                        
                      },
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.favorite,
                            color: Colors.black, size: 16),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Row(
                    children: List.generate(
                      rating.round(),
                      (index) => const Icon(Icons.star,
                          size: 16, color: Colors.orange),
                    ),
                  ),
                  Text(' ($ratingCount)',
                      style: const TextStyle(fontSize: 12, color: Colors.grey)),
                ],
              ),
              const SizedBox(height: 4),
              Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(category, style: const TextStyle(color: Colors.grey)),
              const SizedBox(height: 4),
              Row(
                children: [
                  Text('\$$priceNew',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.green)),
                  const SizedBox(width: 8),
                  Text(
                    '\$$priceOld',
                    style: const TextStyle(
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class NewProductCard extends StatelessWidget {
  final String imageUrl;
  final String label;
  final String category;
  final double priceOld;
  final double priceNew;
  final double rating;
  final int ratingCount;

  const NewProductCard({
    super.key,
    required this.imageUrl,
    required this.label,
    required this.category,
    required this.priceOld,
    required this.priceNew,
    required this.rating,
    required this.ratingCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      margin: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.network(imageUrl, height: 120, fit: BoxFit.cover),
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 2),
                      decoration: BoxDecoration(
                        color: const Color(0xFF013252),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text('New',
                          style: TextStyle(color: Colors.white, fontSize: 10)),
                    ),
                  ),
                  Positioned(
                    bottom: 8,
                    right: 8,
                    child: InkWell(
                      onTap: () {
                        
                      },
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.favorite,
                            color: Colors.black, size: 16),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Row(
                    children: List.generate(
                      rating.round(),
                      (index) => const Icon(Icons.star,
                          size: 16, color: Colors.orange),
                    ),
                  ),
                  Text(' ($ratingCount)',
                      style: const TextStyle(fontSize: 12, color: Colors.grey)),
                ],
              ),
              const SizedBox(height: 4),
              Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(category, style: const TextStyle(color: Colors.grey)),
              const SizedBox(height: 4),
              Row(
                children: [
                  Text('\$$priceNew',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.green)),
                  const SizedBox(width: 8),
                  Text(
                    '\$$priceOld',
                    style: const TextStyle(
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TopSellingProductCard extends StatelessWidget {
  final String imageUrl;
  final String label;
  final String category;
  final double priceOld;
  final double priceNew;
  final double rating;
  final int ratingCount;

  const TopSellingProductCard({
    super.key,
    required this.imageUrl,
    required this.label,
    required this.category,
    required this.priceOld,
    required this.priceNew,
    required this.rating,
    required this.ratingCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      margin: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.network(imageUrl, height: 120, fit: BoxFit.cover),
                  Positioned(
                    bottom: 8,
                    right: 8,
                    child: InkWell(
                      onTap: () {
                        
                      },
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.favorite,
                            color: Colors.black, size: 16),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Row(
                    children: List.generate(
                      rating.round(),
                      (index) => const Icon(Icons.star,
                          size: 16, color: Colors.orange),
                    ),
                  ),
                  Text(' ($ratingCount)',
                      style: const TextStyle(fontSize: 12, color: Colors.grey)),
                ],
              ),
              const SizedBox(height: 4),
              Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(category, style: const TextStyle(color: Colors.grey)),
              const SizedBox(height: 4),
              Row(
                children: [
                  Text('\$$priceNew',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.green)),
                  const SizedBox(width: 8),
                  Text(
                    '\$$priceOld',
                    style: const TextStyle(
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
