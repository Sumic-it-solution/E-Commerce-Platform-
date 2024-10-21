import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sumic_online/home/search_by_photo.dart';
import 'package:sumic_online/components/appbar.dart';

class VisualSearch extends StatelessWidget {
  const VisualSearch({super.key});

  Future<void> _openGallery(BuildContext context) async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      // Handle the selected image (e.g., display it, save it, etc.)
      // ignore: avoid_print
      print('Image selected: ${image.path}');
      // You can also navigate to another page or perform other actions here
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Visual Search',
        titleTextStyle: const TextStyle(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/womens_blouse.jpg'),
                fit: BoxFit.cover,
                opacity: 0.5,
              ),
            ),
            child: Container(color: Colors.black.withOpacity(0.6)),
          ),
          // Content over the background
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                // Instruction text
                const Text(
                  'Search for an outfit by taking a photo or uploading an image',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                // Take a Photo Button
                SizedBox(
                  width: 343,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SearchByPhoto()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0XFF013252),
                      minimumSize:
                          const Size(double.infinity, 50), // Full-width button
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: const Text(
                      'TAKE A PHOTO',
                      style: TextStyle(color: Color(0xFF1EEF0F)),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                // Upload an Image Button
                SizedBox(
                  width: 343,
                  height: 48,
                  child: OutlinedButton(
                    onPressed: () => _openGallery,
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.white, width: 2),
                      minimumSize:
                          const Size(double.infinity, 50), // Full-width button
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: const Text(
                      'UPLOAD AN IMAGE',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
