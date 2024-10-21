// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyProfileSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 375,
          height: 812,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color(0xFFF9F9F9)),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 375,
                  height: 151,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 14,
                        top: 106,
                        child: Text(
                          'Settings',
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
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                                      child: Row(
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
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage("https://via.placeholder.com/15x11"),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 24.33,
                                      height: 11.33,
                                      child: Stack(),
                                    ),
                                    Container(
                                      width: 17,
                                      height: 10.67,
                                      decoration: BoxDecoration(
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
                                        decoration: BoxDecoration(),
                                        child: Column(
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
                  decoration: BoxDecoration(),
                  child: FlutterLogo(),
                ),
              ),
              Positioned(
                left: 236,
                top: 398,
                child: Container(
                  width: 24,
                  height: 24,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 9,
                top: 52,
                child: Container(
                  width: 24,
                  height: 24,
                  padding: const EdgeInsets.only(
                    top: 4,
                    left: 7,
                    right: 7.74,
                    bottom: 4,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 406,
                child: Container(
                  width: 343,
                  height: 102,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 38,
                        child: Container(
                          width: 343,
                          height: 64,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 343,
                                  height: 64,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                    shadows: [
                                      BoxShadow(
                                        color: Color(0x0C000000),
                                        blurRadius: 8,
                                        offset: Offset(0, 1),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 20,
                                top: 29,
                                child: Text(
                                  '****************',
                                  style: TextStyle(
                                    color: Color(0xFF222222),
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0.11,
                                    letterSpacing: -0.15,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 20,
                                top: 13,
                                child: Text(
                                  'Password',
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
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Text(
                          'Password',
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
                        left: 290,
                        top: 0,
                        child: Text(
                          'Change',
                          style: TextStyle(
                            color: Color(0xFF9B9B9B),
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0.10,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 162,
                child: Container(
                  width: 343,
                  height: 190,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 38,
                        child: Container(
                          width: 343,
                          height: 64,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 343,
                                  height: 64,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                    shadows: [
                                      BoxShadow(
                                        color: Color(0x0C000000),
                                        blurRadius: 8,
                                        offset: Offset(0, 1),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 20,
                                top: 22,
                                child: Text(
                                  'Full name',
                                  style: TextStyle(
                                    color: Color(0xFF9B9B9B),
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0.10,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 126,
                        child: Container(
                          width: 343,
                          height: 64,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 343,
                                  height: 64,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                    shadows: [
                                      BoxShadow(
                                        color: Color(0x0C000000),
                                        blurRadius: 8,
                                        offset: Offset(0, 1),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 20,
                                top: 29,
                                child: Text(
                                  '12/12/1989',
                                  style: TextStyle(
                                    color: Color(0xFF222222),
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0.11,
                                    letterSpacing: -0.15,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 20,
                                top: 13,
                                child: Text(
                                  'Date of Birth',
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
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Text(
                          'Personal Information',
                          style: TextStyle(
                            color: Color(0xFF222222),
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 562,
                child: Container(
                  width: 343,
                  height: 148,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Text(
                          'Notifications',
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
                        top: 40,
                        child: Container(
                          width: 342,
                          height: 20,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Text(
                                  'Sales',
                                  style: TextStyle(
                                    color: Color(0xFF222222),
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0.10,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 309,
                                top: 0,
                                child: Container(
                                  width: 33,
                                  height: 20,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Opacity(
                                        opacity: 0.10,
                                        child: Container(
                                          width: 32,
                                          height: 20,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFF9B9B9B),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(15),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 20,
                                        height: 20,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF1EEF0F),
                                          shape: OvalBorder(),
                                          shadows: [
                                            BoxShadow(
                                              color: Color(0x722AA952),
                                              blurRadius: 8,
                                              offset: Offset(0, 0),
                                              spreadRadius: 0,
                                            )
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
                      Positioned(
                        left: 0,
                        top: 84,
                        child: Container(
                          width: 343,
                          height: 20,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Text(
                                  'New arrivals',
                                  style: TextStyle(
                                    color: Color(0xFF222222),
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0.10,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 343,
                                top: 0,
                                child: Transform(
                                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
                                  child: Container(
                                    width: 33,
                                    height: 20,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Opacity(
                                          opacity: 0.10,
                                          child: Container(
                                            width: 32,
                                            height: 20,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFF9B9B9B),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(15),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 20,
                                          height: 20,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: OvalBorder(),
                                            shadows: [
                                              BoxShadow(
                                                color: Color(0xFFF0F0F0),
                                                blurRadius: 8,
                                                offset: Offset(0, 0),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 128,
                        child: Container(
                          width: 343,
                          height: 20,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Text(
                                  'Delivery status changes',
                                  style: TextStyle(
                                    color: Color(0xFF222222),
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0.10,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 343,
                                top: 0,
                                child: Transform(
                                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
                                  child: Container(
                                    width: 33,
                                    height: 20,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Opacity(
                                          opacity: 0.10,
                                          child: Container(
                                            width: 32,
                                            height: 20,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFF9B9B9B),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(15),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 20,
                                          height: 20,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: OvalBorder(),
                                            shadows: [
                                              BoxShadow(
                                                color: Color(0xFFF0F0F0),
                                                blurRadius: 8,
                                                offset: Offset(0, 0),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
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
                top: 778,
                child: Container(
                  width: 375,
                  height: 34,
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 121,
                    right: 120,
                    bottom: 9,
                  ),
                  child: Row(
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
    );
  }
}