// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyProfileMyOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 375,
          height: 812,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color(0xFFF9F9F9)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 375,
                height: 149,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(),
                child: Stack(
                  children: [
                    Positioned(
                      left: 14,
                      top: 106,
                      child: Text(
                        'My Orders',
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
              Container(
                width: 24,
                height: 24,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(),
                child: FlutterLogo(),
              ),
              Container(
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
              Container(
                width: 340,
                height: 30,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(color: Color(0xFF013252)),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 100,
                                height: 30,
                                decoration: ShapeDecoration(
                                  color: Color(0xFF013252),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(29),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 12,
                              top: 8,
                              child: SizedBox(
                                width: 77,
                                height: 15,
                                child: Text(
                                  'Delivered',
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
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 121,
                      top: 0,
                      child: Container(
                        width: 100,
                        height: 30,
                        padding: const EdgeInsets.only(top: 8, left: 12, right: 11, bottom: 7),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 77,
                              height: 15,
                              child: Text(
                                'Processing',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF013252),
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
                      left: 240,
                      top: 0,
                      child: Container(
                        width: 100,
                        height: 30,
                        padding: const EdgeInsets.only(top: 8, left: 12, right: 11, bottom: 7),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 77,
                              height: 15,
                              child: Text(
                                'Cancelled',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF013252),
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
              Container(
                width: 344,
                height: 540,
                child: Stack(
                  children: [
                    Positioned(
                      left: 1,
                      top: 0,
                      child: Container(
                        width: 343,
                        height: 164,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 343,
                              height: 164,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x1E000000),
                                    blurRadius: 24,
                                    offset: Offset(0, 1),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                            ),
                            Text(
                              'Order №1947034',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF222222),
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                            Text(
                              '05-12-2019',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFF9B9B9B),
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0.10,
                              ),
                            ),
                            Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Text(
                                    'Tracking number:',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF9B9B9B),
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      height: 0.10,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 126,
                                  top: 0,
                                  child: Text(
                                    'IW3475453455',
                                    style: TextStyle(
                                      color: Color(0xFF222222),
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0.10,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Text(
                                    'Quantity:',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF9B9B9B),
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      height: 0.10,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 72,
                                  top: 0,
                                  child: Text(
                                    '3',
                                    textAlign: TextAlign.center,
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
                            Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Text(
                                    'Total Amount:',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF9B9B9B),
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      height: 0.10,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 103,
                                  top: 0,
                                  child: Text(
                                    '112\$',
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
                            Container(
                              width: 98,
                              height: 36,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 98,
                                      height: 36,
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(width: 1, color: Color(0xFF222222)),
                                          borderRadius: BorderRadius.circular(24),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 26.30,
                                    top: 8,
                                    child: Text(
                                      'Details',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF222222),
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
                            SizedBox(
                              width: 77,
                              height: 15,
                              child: Text(
                                'Delivered',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF2AA952),
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
                      top: 188,
                      child: Container(
                        width: 343,
                        height: 164,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 343,
                              height: 164,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x1E000000),
                                    blurRadius: 24,
                                    offset: Offset(0, 1),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                            ),
                            Text(
                              'Order №1947034',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF222222),
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                            Text(
                              '05-12-2019',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFF9B9B9B),
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0.10,
                              ),
                            ),
                            Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Text(
                                    'Tracking number:',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF9B9B9B),
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      height: 0.10,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 126,
                                  top: 0,
                                  child: Text(
                                    'IW3475453455',
                                    style: TextStyle(
                                      color: Color(0xFF222222),
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0.10,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Text(
                                    'Quantity:',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF9B9B9B),
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      height: 0.10,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 72,
                                  top: 0,
                                  child: Text(
                                    '3',
                                    textAlign: TextAlign.center,
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
                            Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Text(
                                    'Total Amount:',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF9B9B9B),
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      height: 0.10,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 103,
                                  top: 0,
                                  child: Text(
                                    '112\$',
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
                            Container(
                              width: 98,
                              height: 36,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 98,
                                      height: 36,
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(width: 1, color: Color(0xFF222222)),
                                          borderRadius: BorderRadius.circular(24),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 26.30,
                                    top: 8,
                                    child: Text(
                                      'Details',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF222222),
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
                            SizedBox(
                              width: 77,
                              height: 15,
                              child: Text(
                                'Delivered',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF2AA952),
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
                      left: 1,
                      top: 376,
                      child: Container(
                        width: 343,
                        height: 164,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 343,
                              height: 164,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x1E000000),
                                    blurRadius: 24,
                                    offset: Offset(0, 1),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                            ),
                            Text(
                              'Order №1947034',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF222222),
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                            Text(
                              '05-12-2019',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFF9B9B9B),
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0.10,
                              ),
                            ),
                            Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Text(
                                    'Tracking number:',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF9B9B9B),
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      height: 0.10,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 126,
                                  top: 0,
                                  child: Text(
                                    'IW3475453455',
                                    style: TextStyle(
                                      color: Color(0xFF222222),
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0.10,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Text(
                                    'Quantity:',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF9B9B9B),
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      height: 0.10,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 72,
                                  top: 0,
                                  child: Text(
                                    '3',
                                    textAlign: TextAlign.center,
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
                            Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Text(
                                    'Total Amount:',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF9B9B9B),
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      height: 0.10,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 103,
                                  top: 0,
                                  child: Text(
                                    '112\$',
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
                            Container(
                              width: 98,
                              height: 36,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 98,
                                      height: 36,
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(width: 1, color: Color(0xFF222222)),
                                          borderRadius: BorderRadius.circular(24),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 26.30,
                                    top: 8,
                                    child: Text(
                                      'Details',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF222222),
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
                            SizedBox(
                              width: 77,
                              height: 15,
                              child: Text(
                                'Delivered',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF2AA952),
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
              Container(
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
                        decoration: BoxDecoration(),
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
                                      decoration: ShapeDecoration(
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
                                                  Positioned(
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
                                                  Positioned(
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
                                                  Positioned(
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
                                                      decoration: BoxDecoration(),
                                                      child: Row(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: [
                                                          Container(
                                                            width: 24,
                                                            height: 24,
                                                            decoration: ShapeDecoration(
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
                                                  Positioned(
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
                                                      decoration: BoxDecoration(),
                                                      child: FlutterLogo(),
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
                      left: 322,
                      top: 35,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://via.placeholder.com/30x30"),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
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
            ],
          ),
        ),
      ],
    );
  }
}