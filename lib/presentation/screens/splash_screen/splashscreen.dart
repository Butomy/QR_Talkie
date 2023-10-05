import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/screens/onboarding/onboarding_screens.dart';

import '../../../utils/custom_font_style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
    @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return const OnBoardingScreen();
        },
      ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: ScreenUtil().screenHeight,
            width: ScreenUtil().screenWidth,
            child: Image.asset(
              "assets/images/Group 14.png",
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
              left: 0,
              top: 0,
              bottom: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/Group 331.png",
                    width: 100.w,
                    height: 120.h,
                  ),
                  Text('QR Talkie',style:CustomFontStyle().common(fontSize: 19.29,fontWeight: FontWeight.w700))
           
                ],
              )),
        ],
      ),
    );
  }
}
