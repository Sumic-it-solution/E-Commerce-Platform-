

import 'package:flutter/material.dart';
import 'package:sumic_online/components/sumic_button.dart';

class BrandsPage extends StatefulWidget {
  const BrandsPage({super.key});

  @override
  _BrandsPageState createState() => _BrandsPageState();
}

class _BrandsPageState extends State<BrandsPage> {
  List<String> brands = [
    "Adidas",
    "Adidas Originals",
    "Blend",
    "Boutique Moschino",
    "Champion",
    "Diesel",
    "Jack & Jones",
    "Naf Naf",
    "Red Valentino",
    "S.Oliver"
  ];

  List<bool> selectedBrands = List.filled(10, false); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Brand',
          style: TextStyle(
            color: Color(0xFF013252),
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const TextField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.black26), 
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(10), 
                    right: Radius.circular(10), 
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.black26), 
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(10), 
                    right: Radius.circular(10), 
                  ),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                filled: true,
                fillColor: Colors.white, 
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: brands.length,
                itemBuilder: (context, index) {
                  return CheckboxListTile(
                    activeColor: const Color(0xFF013252),
                    title: Text(brands[index]),
                    value: selectedBrands[index],
                    onChanged: (bool? value) {
                      setState(() {
                        selectedBrands[index] = value ?? false;
                      });
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      
                      setState(() {
                        selectedBrands = List.filled(10, false);
                      });
                    },
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    child: const Text(
                      'Discard',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      
                      
                      List<String> appliedBrands = [];
                      for (int i = 0; i < brands.length; i++) {
                        if (selectedBrands[i]) {
                          appliedBrands.add(brands[i]);
                        }
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF013252),
                    ),
                    child: const Text(
                      'Apply',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            SumicButton(text: 'NEXT', onTap: ()=> Navigator.pushNamed(context, '/productcardpage'),),
          ],
        ),
      ),
    );
  }
}
