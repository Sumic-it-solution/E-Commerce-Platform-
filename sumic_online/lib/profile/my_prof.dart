// ignore_for_file: sized_box_for_whitespace, duplicate_ignore

import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 375,
          height: 812,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Color(0xFFF9F9F9)),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 375,
                  height: 151,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: Stack(
                    children: [
                      const Positioned(
                        left: 14,
                        top: 106,
                        child: Text(
                          'My profile',
                          style: TextStyle(
                            color: Color(0xFF013252),
                            fontSize: 34,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 375,
                          height: 88,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // ignore: duplicate_ignore
                              // ignore: sized_box_for_whitespace
                              Container(
                                width: 375,
                                height: 44,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 54,
                                      height: 21,
                                      padding: const EdgeInsets.only(top: 2, bottom: 1),
                                      child: const Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 54,
                                            height: 18,
                                            child: Text(
                                              '9:41',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontFamily: 'SF Pro Text',
                                                fontWeight: FontWeight.w600,
                                                height: 0,
                                                letterSpacing: -0.30,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 15.27,
                                      height: 10.97,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage("https://via.placeholder.com/15x11"),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    // ignore: sized_box_for_whitespace
                                    Container(
                                      width: 24.33,
                                      height: 11.33,
                                      child: const Stack(),
                                    ),
                                    Container(
                                      width: 17,
                                      height: 10.67,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage("https://via.placeholder.com/17x11"),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.only(
                                    top: 8,
                                    left: 8,
                                    right: 343,
                                    bottom: 12,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 24,
                                        height: 24,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: const BoxDecoration(),
                                        child: const Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                          
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 340,
                top: 52,
                child: Container(
                  width: 24,
                  height: 24,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: const FlutterLogo(),
                ),
              ),
              Positioned(
                left: 236,
                top: 398,
                child: Container(
                  width: 24,
                  height: 24,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 328,
                child: Container(
                  width: 375,
                  height: 72,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: Stack(
                    children: [
                      const Positioned(
                        left: 16,
                        top: 18,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Text(
                                'Shipping addresses',
                                style: TextStyle(
                                  color: Color(0xFF222222),
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 25,
                              child: Text(
                                '3 ddresses',
                                style: TextStyle(
                                  color: Color(0xFF9B9B9B),
                                  fontSize: 11,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 71,
                        child: Opacity(
                          opacity: 0.05,
                          child: Container(
                            width: 375,
                            height: 1,
                            decoration: const BoxDecoration(color: Color(0xFF9B9B9B)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 343,
                        top: 24,
                        child: Container(width: 24, height: 24, child: const Stack()),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 472,
                child: Container(
                  width: 375,
                  height: 72,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: Stack(
                    children: [
                      const Positioned(
                        left: 15,
                        top: 19,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Text(
                                'Promocodes',
                                style: TextStyle(
                                  color: Color(0xFF222222),
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 24,
                              child: Text(
                                'You have special promocodes',
                                style: TextStyle(
                                  color: Color(0xFF9B9B9B),
                                  fontSize: 11,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 71,
                        child: Opacity(
                          opacity: 0.05,
                          child: Container(
                            width: 375,
                            height: 1,
                            decoration: const BoxDecoration(color: Color(0xFF9B9B9B)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 343,
                        top: 24,
                        child: Container(width: 24, height: 24, child: const Stack()),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 616,
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 19,
                    left: 15,
                    right: 8,
                    bottom: 16,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 123,
                        height: double.infinity,
                        child: const Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Text(
                                'Settings',
                                style: TextStyle(
                                  color: Color(0xFF222222),
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 24,
                              child: Text(
                                'Notifications, password',
                                style: TextStyle(
                                  color: Color(0xFF9B9B9B),
                                  fontSize: 11,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 205),
                      Container(width: 24, height: 24, child: const Stack()),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 544,
                child: Container(
                  width: 375,
                  height: 72,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: Stack(
                    children: [
                      const Positioned(
                        left: 15,
                        top: 19,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Text(
                                'My reviews',
                                style: TextStyle(
                                  color: Color(0xFF222222),
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 1,
                              top: 24,
                              child: Text(
                                'Reviews for 4 items',
                                style: TextStyle(
                                  color: Color(0xFF9B9B9B),
                                  fontSize: 11,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 71,
                        child: Opacity(
                          opacity: 0.05,
                          child: Container(
                            width: 375,
                            height: 1,
                            decoration: const BoxDecoration(color: Color(0xFF9B9B9B)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 343,
                        top: 24,
                        child: Container(width: 24, height: 24, child: const Stack()),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 256,
                child: Container(
                  width: 375,
                  height: 72,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 71,
                        child: Opacity(
                          opacity: 0.05,
                          child: Container(
                            width: 375,
                            height: 1,
                            decoration: const BoxDecoration(color: Color(0xFF9B9B9B)),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 15,
                        top: 18,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Text(
                                'My orders',
                                style: TextStyle(
                                  color: Color(0xFF222222),
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 1,
                              top: 25,
                              child: Text(
                                'Already have 12 orders',
                                style: TextStyle(
                                  color: Color(0xFF9B9B9B),
                                  fontSize: 11,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 343,
                        top: 24,
                        child: Container(width: 24, height: 24, child: const Stack()),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 702,
                child: Container(
                  width: 375,
                  height: 110,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 375,
                          height: 110,
                          padding: const EdgeInsets.only(top: 27),
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 375,
                                height: 83,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 375,
                                        height: 83,
                                        decoration: const ShapeDecoration(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(12),
                                              topRight: Radius.circular(12),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 26,
                                      top: 8,
                                      child: Container(
                                        width: 257,
                                        height: 44,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 213,
                                              top: 0,
                                              child: Container(
                                                width: 44,
                                                height: 44,
                                                child: Stack(
                                                  children: [
                                                    const Positioned(
                                                      left: 0,
                                                      top: 32,
                                                      child: Text(
                                                        'Favorites',
                                                        style: TextStyle(
                                                          color: Color(0xFF9B9B9B),
                                                          fontSize: 10,
                                                          fontFamily: 'Inter',
                                                          fontWeight: FontWeight.w400,
                                                          height: 0,
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      left: 7,
                                                      top: 0,
                                                      child: Container(
                                                        width: 30,
                                                        height: 30,
                                                        padding: const EdgeInsets.only(
                                                          top: 3,
                                                          left: 2,
                                                          right: 1.84,
                                                          bottom: 3,
                                                        ),
                                                        clipBehavior: Clip.antiAlias,
                                                        decoration: const BoxDecoration(),
                                                        child: const Row(
                                                          mainAxisSize: MainAxisSize.min,
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: [
                                                          
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 147,
                                              top: 0,
                                              child: Container(
                                                width: 30,
                                                height: 44,
                                                child: Stack(
                                                  children: [
                                                    const Positioned(
                                                      left: 5,
                                                      top: 32,
                                                      child: Text(
                                                        'Bag',
                                                        style: TextStyle(
                                                          color: Color(0xFF9B9B9B),
                                                          fontSize: 10,
                                                          fontFamily: 'Inter',
                                                          fontWeight: FontWeight.w400,
                                                          height: 0,
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      left: 0,
                                                      top: 0,
                                                      child: Container(
                                                        width: 30,
                                                        height: 30,
                                                        padding: const EdgeInsets.only(top: 4, left: 3, right: 3, bottom: 3),
                                                        clipBehavior: Clip.antiAlias,
                                                        decoration: const BoxDecoration(),
                                                        child: const Row(
                                                          mainAxisSize: MainAxisSize.min,
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: [
                                                          
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 75,
                                              top: 0,
                                              child: Container(
                                                width: 30,
                                                height: 44,
                                                child: Stack(
                                                  children: [
                                                    const Positioned(
                                                      left: 2,
                                                      top: 32,
                                                      child: Text(
                                                        'Shop',
                                                        style: TextStyle(
                                                          color: Color(0xFF9B9B9B),
                                                          fontSize: 10,
                                                          fontFamily: 'Inter',
                                                          fontWeight: FontWeight.w400,
                                                          height: 0,
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      left: 0,
                                                      top: 0,
                                                      child: Container(
                                                        width: 30,
                                                        height: 30,
                                                        padding: const EdgeInsets.all(3),
                                                        clipBehavior: Clip.antiAlias,
                                                        decoration: const BoxDecoration(),
                                                        child: Row(
                                                          mainAxisSize: MainAxisSize.min,
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: [
                                                            Container(
                                                              width: 24,
                                                              height: 24,
                                                              decoration: const ShapeDecoration(
                                                                image: DecorationImage(
                                                                  image: NetworkImage("https://via.placeholder.com/24x24"),
                                                                  fit: BoxFit.fill,
                                                                ),
                                                                shape: RoundedRectangleBorder(
                                                                  side: BorderSide(
                                                                    width: 1,
                                                                    strokeAlign: BorderSide.strokeAlignCenter,
                                                                    color: Color(0xFF9B9B9B),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 0,
                                              top: 0,
                                              child: Container(
                                                width: 30,
                                                height: 44,
                                                child: Stack(
                                                  children: [
                                                    const Positioned(
                                                      left: 1,
                                                      top: 32,
                                                      child: Text(
                                                        'Home',
                                                        style: TextStyle(
                                                          color: Color(0xFF9B9B9B),
                                                          fontSize: 10,
                                                          fontFamily: 'Inter',
                                                          fontWeight: FontWeight.w400,
                                                          height: 0,
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      left: 0,
                                                      top: 0,
                                                      child: Container(
                                                        width: 30,
                                                        height: 30,
                                                        clipBehavior: Clip.antiAlias,
                                                        decoration: const BoxDecoration(),
                                                        child: const FlutterLogo(),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      left: 0,
                                                      top: 0,
                                                      child: Container(
                                                        width: 30,
                                                        height: 30,
                                                        padding: const EdgeInsets.only(
                                                          top: 3,
                                                          left: 1,
                                                          right: 0.76,
                                                          bottom: 3,
                                                        ),
                                                        clipBehavior: Clip.antiAlias,
                                                        decoration: const BoxDecoration(),
                                                        child: const Row(
                                                          mainAxisSize: MainAxisSize.min,
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: [
                                                          
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 49,
                                      child: Container(
                                        width: 375,
                                        height: 34,
                                        padding: const EdgeInsets.only(
                                          top: 20,
                                          left: 121,
                                          right: 120,
                                          bottom: 9,
                                        ),
                                        child: const Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                          
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 322,
                        top: 35,
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://via.placeholder.com/30x30"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 323,
                        top: 66,
                        child: SizedBox(
                          width: 41,
                          height: 9,
                          child: Text(
                            'Profile',
                            style: TextStyle(
                              color: Color(0xFF1EEF0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 104,
                top: 172,
                child: Text(
                  'Tayebwa Ricky',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0.07,
                  ),
                ),
              ),
              const Positioned(
                left: 104,
                top: 196,
                child: Text(
                  'tayebwaricky2020@gmail.com',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0.10,
                  ),
                ),
              ),
              Positioned(
                left: 25,
                top: 165,
                child: Container(
                  width: 58,
                  height: 58,
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: OvalBorder(side: BorderSide(width: 1)),
                  ),
                ),
              ),
              Positioned(
                left: 34,
                top: 172,
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/45x45"),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(360),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}