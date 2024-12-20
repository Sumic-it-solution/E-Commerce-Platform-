import 'package:flutter/material.dart';
import 'package:sumic_online/components/text.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  FavoritesPageState createState() => FavoritesPageState();
}

class FavoritesPageState extends State<FavoritesPage> {
  bool _isGridView = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: CustomText(
              text: 'Favourites',
              fontSize: 30,
              color: Color(0xFF013252),
              fontWeight: FontWeight.bold,
            ),
          ),
          _buildSortingAndFilters(),
          Expanded(
            child: _isGridView ? _buildGridView() : _buildListView(),
          ),
        ],
      ),
    );
  }

  Widget _buildGridView() {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      childAspectRatio: 0.65,
      padding: const EdgeInsets.all(16),
      children: [
        _buildProductCard(
          "LIME",
          "Shirt",
          "Blue",
          "L",
          "32\$",
          4.0,
          imageUrl:
              "https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/mens_cloth.jpg",
        ),
        _buildProductCard(
          "Mango",
          "",
          "Orange",
          "S",
          "46\$",
          0.0,
          isNew: true,
          imageUrl:
              "https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/accessories.jpg",
        ),
        _buildProductCard(
          "Oliver",
          "Shirt",
          "Gray",
          "L",
          "52\$",
          3.0,
          isOutOfStock: true,
          imageUrl:
              "https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/bag_3.jpg",
        ),
        _buildProductCard(
          "&Berries",
          "T-Shirt",
          "Black",
          "",
          "30\$",
          2.0,
          discount: "-30%",
          imageUrl:
              "https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/kids_accessories.jpg",
        ),
        _buildProductCard(
          "&Berries",
          "T-Shirt",
          "Black",
          "",
          "30\$",
          2.0,
          discount: "-30%",
          imageUrl:
              "https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/men_hoodies.jpg",
        ),
        _buildProductCard(
          "&Berries",
          "T-Shirt",
          "Black",
          "",
          "30\$",
          2.0,
          discount: "-30%",
          imageUrl:
              "https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/accessories.jpg",
        ),
        _buildProductCard(
          "&Berries",
          "T-Shirt",
          "Black",
          "",
          "30\$",
          2.0,
          discount: "-30%",
          imageUrl:
              "https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/bag_3.jpg",
        ),
      ],
    );
  }

  Widget _buildListView() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _buildListProductCard(
          "LIME",
          "Shirt",
          "Blue",
          "L",
          "32\$",
          4.0,
          imageUrl:
              "https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/mens_shoes.jpg",
        ),
        _buildListProductCard(
          "Mango",
          "Phone",
          "Orange",
          "S",
          "46\$",
          0.0,
          isNew: true,
          imageUrl:
              "https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/men_accessories.jpg",
        ),
        _buildListProductCard(
          "Oliver",
          "Shirt",
          "Gray",
          "L",
          "52\$",
          3.0,
          isOutOfStock: true,
          imageUrl:
              "https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/mens_shoes.jpg",
        ),
        _buildListProductCard(
          "&Berries",
          "T-Shirt",
          "Black",
          "",
          "30\$",
          2.0,
          discount: "-30%",
          imageUrl:
              "https://media.githubusercontent.com/media/timothy-creater/sumiconline_images/main/images/shoes.jpg",
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
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.25,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (isNew)
                  const Text("NEW", style: TextStyle(color: Colors.blue)),
                Text(
                  brand,
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
                Text(
                  name,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Color: $color  Size: $size",
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
                Text(
                  price,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
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
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 2),
                      color: const Color(0xFF013252),
                      child: Text(
                        discount,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                const Align(
                  alignment: Alignment.bottomRight,
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
              image: NetworkImage(imageUrl),
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
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
              color: const Color(0xFF013252),
              child: Text(
                discount,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        const Align(
          alignment: Alignment.bottomRight,
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
