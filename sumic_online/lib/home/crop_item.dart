import 'package:flutter/material.dart';
import 'package:sumic_online/components/appbar.dart';
import 'package:sumic_online/components/sumic_button.dart';

class CropTheItem extends StatelessWidget {
  const CropTheItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Crop The Item',
        titleTextStyle: const TextStyle(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Stack(children: [
        // Background image
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 750,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/women_pullover.jpg'), // Your image path
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.only(bottom: 44.0),
              child: Center(
                child: FloatingActionButton(
                  onPressed: () {
                    // Your button press functionality
                  },
                  backgroundColor: const Color(0xFF013252),
                  shape: const CircleBorder(), // Set the background color
                  child: const Icon(
                    Icons.search_rounded,
                    color: Colors.white,
                  ), // Ensures the button has a circular shape
                ),
              ),
            ),
          ],
        ),
        SumicButton(text: 'Next', onTap: ()=> Navigator.pushNamed(context, '/main2'),
)
      ]),
    );
  }
}
