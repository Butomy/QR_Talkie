import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/screens/login/loginpage.dart';
import 'package:qr_talkie/presentation/widgets/custom_button.dart';
import 'package:qr_talkie/utils/colors.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: ScreenUtil().screenHeight,
            width: ScreenUtil().screenWidth,
            child: Image.asset(
              "assets/images/onboarding4.png",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('QR Talkie',
                    style: CustomFontStyle().common(
                        fontSize: 29.11.sp,
                        fontWeight: FontWeight.w700,
                        color: white)),
                SizedBox(height: 15.h),
                Text(
                    'You can message with unknown \n           persons using QR Talki',
                    style: CustomFontStyle().common(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: white)),
                SizedBox(height: 10.h),
                CustomButton(
                  text: "Login",
                  textColor: white,
                  bgColor: primaryColor,
                  onPress: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const LoginPage();
                      },
                    ));
                  },
                ),
                SizedBox(height: 10.h),
                CustomButton(
                  text: 'Sign Up',
                  textColor: primaryColor,
                  bgColor: white,
                  onPress: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return LoginPage();
                      },
                    ));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
