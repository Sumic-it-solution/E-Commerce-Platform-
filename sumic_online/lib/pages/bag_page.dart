// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sumic_online/bag/my_bag.dart';

class BagPage extends StatelessWidget {
  const BagPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MyBag(),
    );
  }
}
