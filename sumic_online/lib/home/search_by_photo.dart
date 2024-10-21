import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sumic_online/components/appbar.dart';
import 'package:sumic_online/components/elevated_button.dart';
import 'package:sumic_online/home/visual_finding_similar_results.dart';

class SearchByPhoto extends StatefulWidget {
  const SearchByPhoto({super.key});

  @override
  SearchByPhotoState createState() => SearchByPhotoState();
}

class SearchByPhotoState extends State<SearchByPhoto> {
  XFile? _photo;

  Future<void> _openCamera() async {
    final ImagePicker picker = ImagePicker();
    final XFile? photo = await picker.pickImage(source: ImageSource.camera);

    if (photo != null) {
      setState(() {
        _photo = photo;
      });
    }
  }

  void _retakePhoto() {
    setState(() {
      _photo = null; // Clear the current photo to allow retake
      _openCamera(); // Open camera for retake
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Search By Taking Photo',
        titleTextStyle: const TextStyle(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Stack(
        children: [
          // Background image
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 700,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/women_pullover.jpg'), // Your image path
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 44),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.flash_on),
                        color: Colors.black,
                        iconSize: 30.0,
                        onPressed: () {
                          // Flash icon button functionality
                        },
                      ),
                      const SizedBox(width: 50),
                      FloatingActionButton(
                        onPressed: _openCamera,
                        backgroundColor: const Color(0xFF013252),
                        child: const Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ),
                      const SizedBox(width: 50),
                      IconButton(
                        icon: const Icon(Icons.refresh_sharp),
                        color: Colors.black,
                        iconSize: 30.0,
                        onPressed: _retakePhoto,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          // Display the taken photo
          if (_photo != null)
            Positioned(
              bottom: 100,
              left: 0,
              right: 0,
              child: Image.file(
                File(_photo!.path),
                height: 200,
              ),
            ),
          CustomElevatedButton(
              text: 'next',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FindingSimilarResults()));
              })
        ],
      ),
    );
  }
}
