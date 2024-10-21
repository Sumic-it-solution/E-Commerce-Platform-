// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

class MyProfileSettingsPasswordChange extends StatelessWidget {
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
                  height: 153,
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
                            color: Color(0xFF222222),
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
                left: 0,
                top: 190,
                child: Container(
                  width: 375,
                  height: 216,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 72,
                        child: Container(
                          width: 375,
                          height: 72,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
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
                                    left: 0,
                                    top: 24,
                                    child: Text(
                                      'Password settings',
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
                              Opacity(
                                opacity: 0.05,
                                child: Container(
                                  width: 375,
                                  height: 1,
                                  decoration: BoxDecoration(color: Color(0xFF9B9B9B)),
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
                          width: 375,
                          height: 72,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
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
                                  Positioned(
                                    left: 0,
                                    top: 24,
                                    child: Text(
                                      'Name, Date of Birth',
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
                              Opacity(
                                opacity: 0.05,
                                child: Container(
                                  width: 375,
                                  height: 1,
                                  decoration: BoxDecoration(color: Color(0xFF9B9B9B)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 144,
                        child: Container(
                          width: 375,
                          height: 72,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
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
                                    top: 24,
                                    child: Text(
                                      'Email notifications',
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
                              Opacity(
                                opacity: 0.05,
                                child: Container(
                                  width: 375,
                                  height: 1,
                                  decoration: BoxDecoration(color: Color(0xFF9B9B9B)),
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
                left: 0,
                top: 0,
                child: Container(
                  width: 375,
                  height: 812,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 375,
                          height: 812,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.20000000298023224),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 340,
                        child: Container(
                          width: 375,
                          height: 472,
                          decoration: ShapeDecoration(
                            color: Color(0xFFF9F9F9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(34),
                                topRight: Radius.circular(34),
                              ),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x14000000),
                                blurRadius: 30,
                                offset: Offset(0, -4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 151,
                        top: 354,
                        child: Container(
                          width: 60,
                          height: 6,
                          decoration: ShapeDecoration(
                            color: Color(0xFF9B9B9B),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 109,
                        top: 376,
                        child: Text(
                          'Password Change',
                          style: TextStyle(
                            color: Color(0xFF222222),
                            fontSize: 18,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            height: 0.07,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 702,
                        child: Container(
                          width: 375,
                          height: 110,
                          padding: const EdgeInsets.only(top: 76),
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 375,
                                height: 34,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
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
                          ),
                        ),
                      ),
                      Positioned(
                        left: 16,
                        top: 716,
                        child: Container(
                          width: 343,
                          height: 48,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 343,
                                  height: 48,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF013252),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    shadows: [
                                      BoxShadow(
                                        color: Color(0x3FD32525),
                                        blurRadius: 8,
                                        offset: Offset(0, 4),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 111,
                                top: 14,
                                child: Text(
                                  'SAVE PASSWORD',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
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
                        top: 532,
                        child: Container(
                          width: 343,
                          height: 152,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 343,
                                  height: 64,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
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
                                      Text(
                                        'New Password',
                                        style: TextStyle(
                                          color: Color(0xFF9B9B9B),
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          height: 0.10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 88,
                                child: Container(
                                  width: 343,
                                  height: 64,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
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
                                      Text(
                                        'Repeat New Password',
                                        style: TextStyle(
                                          color: Color(0xFF9B9B9B),
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          height: 0.10,
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
                        left: 16,
                        top: 416,
                        child: Container(
                          width: 343,
                          height: 98,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
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
                                          'Old Password',
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
                                left: 220,
                                top: 78,
                                child: Text(
                                  'Forgot Password?  ',
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