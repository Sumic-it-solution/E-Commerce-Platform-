// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:sumic_online/components/text.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  bool _isGridView = false; // State variable to track the view type

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
            text: 'Favourites',
            fontSize: 30,
            color: Color(0xFF013252),
            fontWeight: FontWeight.bold,
          ),
          _buildCategoryFilters(),
          _buildSortingAndFilters(),
          Expanded(
            child: _isGridView ? _buildGridView() : _buildListView(),
          ),
        ],
      ),
    );
  }

  // Function to build the grid view
  Widget _buildGridView() {
    return GridView.count(
      crossAxisCount: 2, // Number of columns in the grid
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      childAspectRatio: 0.65, // Adjusts the size of each item
      children: [
        _buildProductCard(
          "LIME",
          "Shirt",
          "Blue",
          "L",
          "32\$",
          4.0,
          imageUrl: "assets/images/womens_shirt.jpg",
        ),
        _buildProductCard(
          "Mango",
          "Longsleeve Violeta",
          "Orange",
          "S",
          "46\$",
          0.0,
          isNew: true,
          imageUrl: "assets/images/women_pullover.jpg",
        ),
        _buildProductCard(
          "Oliver",
          "Shirt",
          "Gray",
          "L",
          "52\$",
          3.0,
          isOutOfStock: true,
          imageUrl: "assets/images/womens_shirt.jpg",
        ),
        _buildProductCard(
          "&Berries",
          "T-Shirt",
          "Black",
          "",
          "30\$",
          2.0,
          discount: "-30%",
          imageUrl: "assets/images/men_new.jpg",
        ),
        _buildProductCard(
          "&Berries",
          "T-Shirt",
          "Black",
          "",
          "30\$",
          2.0,
          discount: "-30%",
          imageUrl: "assets/images/men_new.jpg",
        ),
        _buildProductCard(
          "&Berries",
          "T-Shirt",
          "Black",
          "",
          "30\$",
          2.0,
          discount: "-30%",
          imageUrl: "assets/images/men_new.jpg",
        ),
        _buildProductCard(
          "&Berries",
          "T-Shirt",
          "Black",
          "",
          "30\$",
          2.0,
          discount: "-30%",
          imageUrl: "assets/images/men_new.jpg",
        ),
      ],
    );
  }

  // Function to build the list view
  Widget _buildListView() {
    return ListView(
      children: [
        _buildListProductCard(
          "LIME",
          "Shirt",
          "Blue",
          "L",
          "32\$",
          4.0,
          imageUrl: "assets/images/womens_shirt.jpg",
        ),
        _buildListProductCard(
          "Mango",
          "Longsleeve Violeta",
          "Orange",
          "S",
          "46\$",
          0.0,
          isNew: true,
          imageUrl: "assets/images/women_pullover.jpg",
        ),
        _buildListProductCard(
          "Oliver",
          "Shirt",
          "Gray",
          "L",
          "52\$",
          3.0,
          isOutOfStock: true,
          imageUrl: "assets/images/womens_shirt.jpg",
        ),
        _buildListProductCard(
          "&Berries",
          "T-Shirt",
          "Black",
          "",
          "30\$",
          2.0,
          discount: "-30%",
          imageUrl: "assets/images/mens_new.jpg",
        ),
      ],
    );
  }

  Widget _buildListProductCard(
    String brand,
    String name,
    String color,
    String size,
    String price,
    double rating, {
    bool isNew = false,
    bool isOutOfStock = false,
    String discount = "",
    String imageUrl = "",
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: [
          // Image container taking up 25% of the width
          Container(
            width: MediaQuery.of(context).size.width * 0.25,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16),
          // Descriptions taking up 75% of the width
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (isNew) const Text("NEW", style: TextStyle(color: Colors.blue)),
                Text(
                  brand,
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
                Text(
                  name,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Color: $color  Size: $size",
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
                Text(
                  price,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: List.generate(5, (index) {
                    return Icon(
                      index < rating ? Icons.star : Icons.star_border,
                      size: 16,
                      color: Colors.yellow[600],
                    );
                  }),
                ),
                if (isOutOfStock)
                  const Padding(
                    padding: EdgeInsets.only(top: 4.0),
                    child: Text(
                      "Sorry, this item is currently sold out",
                      style: TextStyle(color: Colors.red, fontSize: 12),
                    ),
                  ),
                if (discount.isNotEmpty)
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                      color: const Color(0xFF013252),
                      child: Text(
                        discount,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                const Positioned(
                  right: 8,
                  bottom: 8,
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Color(0xFF013252),
                    child: Icon(Icons.favorite, color: Colors.white, size: 16),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryFilters() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _buildCategoryChip("Summer"),
            _buildCategoryChip("T-Shirts"),
            _buildCategoryChip("Shirts"),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryChip(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: ChoiceChip(
        label: Text(label),
        selected: false,
        onSelected: (selected) {},
      ),
    );
  }

  Widget _buildSortingAndFilters() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.filter_list, color: Colors.black),
            label: const Text("Filters", style: TextStyle(color: Colors.black)),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.sort, color: Colors.black),
            label: const Text("Price: lowest to high",
                style: TextStyle(color: Colors.black)),
          ),
          IconButton(
            icon: const Icon(Icons.grid_view, color: Colors.black),
            onPressed: () {
              setState(() {
                _isGridView = !_isGridView; // Toggle the view
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _buildProductCard(
    String brand,
    String name,
    String color,
    String size,
    String price,
    double rating, {
    bool isNew = false,
    bool isOutOfStock = false,
    String discount = "",
    String imageUrl = "",
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: AssetImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 8),
        if (isNew) const Text("NEW", style: TextStyle(color: Colors.blue)),
        Text(
          brand,
          style: const TextStyle(fontSize: 14, color: Colors.grey),
        ),
        Text(
          name,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          "Color: $color  Size: $size",
          style: const TextStyle(fontSize: 14, color: Colors.grey),
        ),
        Text(
          price,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Row(
          children: List.generate(5, (index) {
            return Icon(
              index < rating ? Icons.star : Icons.star_border,
              size: 16,
              color: Colors.yellow[600],
            );
          }),
        ),
        if (isOutOfStock)
          const Padding(
            padding: EdgeInsets.only(top: 4.0),
            child: Text(
              "Sorry, this item is currently sold out",
              style: TextStyle(color: Colors.red, fontSize: 12),
            ),
          ),
        if (discount.isNotEmpty)
          Positioned(
            top: 8,
            left: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
              color: const Color(0xFF013252),
              child: Text(
                discount,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        const Positioned(
          right: 8,
          bottom: 8,
          child: CircleAvatar(
            radius: 16,
            backgroundColor: Color(0xFF013252),
            child: Icon(Icons.favorite, color: Colors.white, size: 16),
          ),
        ),
      ],
    );
  }
}
