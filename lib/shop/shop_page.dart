import 'package:flutter/material.dart';
import 'package:sumic_online/shop/filters_page.dart';
import 'package:sumic_online/components/elevated_button.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  final List<Map<String, dynamic>> products = [
    {
      "name": "T-Shirt SPANISH",
      "price": 9.0,
      "image": 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/bag_3.jpg',
      "rating": 4.5,
      "reviews": 3,
      "brand": 'Mango',
      "discount": '-20%',
    },
    {
      "name": "Blouse",
      "price": 14.0,
      "image": 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/men_hoodies.jpg',
      "rating": 4.0,
      "reviews": 20,
      "brand": 'Dorothy Perkins',
      "discount": '-15%',
    },
    {
      "name": "Winter Pullover",
      "price": 25.0,
      "image": 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/bag_3.jpg',
      "rating": 4.8,
      "reviews": 8,
      "brand": 'Zara',
      "discount": '-10%',
    },
    {
      "name": "Evening Dress",
      "price": 45.0,
      "image": 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/mens_shoes.jpg',
      "rating": 4.7,
      "reviews": 15,
      "brand": 'Fashion Nova',
      "discount": '-25%',
    },
    {
      "name": "Casual Shirt",
      "price": 30.0,
      "image": 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/bag_3.jpg',
      "rating": 4.2,
      "reviews": 13,
      "brand": 'H&M',
      "discount": '-18%',
    },
    {
      "name": "Trendy Top",
      "price": 19.0,
      "image": 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/womens_t-shirt.jpg',
      "rating": 4.4,
      "reviews": 12,
      "brand": 'Forever 21',
      "discount": '-12%',
    },
    {
      "name": "Leather Jacket",
      "price": 75.0,
      "image": 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/shoes.jpg',
      "rating": 4.9,
      "reviews": 18,
      "brand": 'Levis',
      "discount": '-30%',
    },
    {
      "name": "Summer Dress",
      "price": 40.0,
      "image": 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/accessories.jpg',
      "rating": 4.5,
      "reviews": 10,
      "brand": 'Zara',
      "discount": '-20%',
    },
    {
      "name": "High Heel Sandals",
      "price": 60.0,
      "image": 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/accessories.jpg',
      "rating": 4.8,
      "reviews": 22,
      "brand": 'Gucci',
      "discount": '-15%',
    },
    {
      "name": "Evening Gown",
      "price": 90.0,
      "image": 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/bag_3.jpg',
      "rating": 4.6,
      "reviews": 17,
      "brand": 'Versace',
      "discount": '-10%',
    },
    {
      "name": "Casual Shoes",
      "price": 35.0,
      "image": 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/men_hoodies.jpg',
      "rating": 4.4,
      "reviews": 19,
      "brand": 'Adidas',
      "discount": '-12%',
    },
    {
      "name": "Leather Boots",
      "price": 80.0,
      "image": 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/mens_shoes.jpg',
      "rating": 4.9,
      "reviews": 20,
      "brand": 'Timberland',
      "discount": '-25%',
    },
    {
      "name": "Sneakers",
      "price": 55.0,
      "image": 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/accessories.jpg',
      "rating": 4.7,
      "reviews": 23,
      "brand": 'Nike',
      "discount": '-18%',
    },
    {
      "name": "Denim Jeans",
      "price": 45.0,
      "image": 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/accessories.jpg',
      "rating": 4.6,
      "reviews": 16,
      "brand": 'Levis',
      "discount": '-15%',
    },
    {
      "name": "Formal Suit",
      "price": 120.0,
      "image": 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/men_hoodies.jpg',
      "rating": 4.8,
      "reviews": 14,
      "brand": 'Hugo Boss',
      "discount": '-20%',
    },
    {
      "name": "Casual Shorts",
      "price": 25.0,
      "image": 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/shoes.jpg',
      "rating": 4.3,
      "reviews": 11,
      "brand": 'H&M',
      "discount": '-10%',
    },
    {
      "name": "Chic Blouse",
      "price": 35.0,
      "image": 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/womens_t-shirt.jpg',
      "rating": 4.3,
      "reviews": 12,
      "brand": 'Chanel',
      "discount": '-15%',
    },
    {
      "name": "Jumpsuit",
      "price": 60.0,
      "image": 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/mens_shoes.jpg',
      "rating": 4.6,
      "reviews": 14,
      "brand": 'Fashion Line',
      "discount": '-20%',
    },
    {
      "name": "New Arrival Dress",
      "price": 85.0,
      "image": 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/men_hoodies.jpg',
      "rating": 4.7,
      "reviews": 12,
      "brand": 'Dresses',
      "discount": 'New',
    },
    {
      "name": "Casual Wear",
      "price": 55.0,
      "image": 'https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/bag_3.jpg',
      "rating": 4.6,
      "reviews": 9,
      "brand": 'Tops',
      "discount": 'New',
    },
  ];

  bool _isGridView = true;
  String selectedSortOption = 'Sort By';
  List<String> sortOptions = [
    'Sort By',
    'Price: Low to High',
    'Price: High to Low',
    'Best Ratings',
    'Newest',
  ];

  void _showSortOptions() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Sort By',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              ...sortOptions.map((option) => ListTile(
                    title: Text(option),
                    onTap: () {
                      setState(() {
                        selectedSortOption = option;
                      });
                      Navigator.pop(context);
                    },
                  )),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Shop',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {
              // Search action
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FiltersPage()),
                      );
                    },
                    child: const Row(
                      children: [
                        Icon(Icons.filter_list),
                        SizedBox(width: 5),
                        Text(
                          'Filter',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: _showSortOptions,
                    child: Row(
                      children: [
                        const Icon(Icons.sort),
                        const SizedBox(width: 5),
                        Text(
                          selectedSortOption,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () => setState(() => _isGridView = !_isGridView),
                    icon: Icon(_isGridView ? Icons.grid_view : Icons.list),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(16.0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) => ProductCard(
                  name: products[index]["name"],
                  price: products[index]["price"],
                  imagePath: products[index]["image"],
                  rating: products[index]["rating"],
                  reviews: products[index]["reviews"],
                  brand: products[index]["brand"],
                  discount: products[index]["discount"],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String name;
  final double price;
  final String imagePath;
  final double rating;
  final int reviews;
  final String brand;
  final String discount;

  const ProductCard({
    super.key,
    required this.name,
    required this.price,
    required this.imagePath,
    required this.rating,
    required this.reviews,
    required this.brand,
    required this.discount,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO: Navigate to product details
      },
      child: SingleChildScrollView(
        child: Card(
          elevation: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetails(
                            name: name,
                            price: price,
                            imagePath: imagePath,
                            rating: rating,
                            reviews: reviews,
                            brand: brand,
                            discount: discount,
                          ),
                        ),
                      );
                    },
                    child:
                        Image.network(imagePath, height: 150, fit: BoxFit.cover),
                  ),
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        discount,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 8,
                    right: 8,
                    child: InkWell(
                      onTap: () {
                        // Add to favorites
                      },
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.favorite_border,
                            color: Colors.black, size: 16),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: List.generate(
                        rating.round(),
                        (index) => const Icon(Icons.star,
                            size: 16, color: Colors.orange),
                      ),
                    ),
                    Text(
                      '($reviews)',
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const SizedBox(height: 4),
                    Text(name,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    Text(brand, style: const TextStyle(color: Colors.grey)),
                    const SizedBox(height: 4),
                    Text('\$$price',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.green)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductDetails extends StatelessWidget {
  final String name;
  final double price;
  final String imagePath;
  final double rating;
  final int reviews;
  final String brand;
  final String discount;

  const ProductDetails({
    super.key,
    required this.name,
    required this.price,
    required this.imagePath,
    required this.rating,
    required this.reviews,
    required this.brand,
    required this.discount,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(imagePath),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text('\$$price',
                      style:
                          const TextStyle(fontSize: 20, color: Colors.green)),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Text('Rating: $rating'),
                      const SizedBox(width: 10),
                      Text('($reviews reviews)'),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text('Brand: $brand'),
                  const SizedBox(height: 8),
                  Text('Discount: $discount'),
                  CustomElevatedButton(text: 'Add to cart', onTap: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
