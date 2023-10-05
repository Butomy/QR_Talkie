import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/screens/login/loginpage.dart';
import 'package:qr_talkie/presentation/screens/sign_up/signup_page.dart';
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
              "assets/images/young-women-scanning-qr-code-cafeteria 1.png",
              fit: BoxFit.fitHeight,
            ),
          ),
          Positioned(
              left: 0,
              top: 0,
              bottom: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(-0.00,-1.00),
                        end: Alignment(0, 1),
                        colors: [
                          Colors.black.withOpacity(0),
                          Color(0xFF1E1E1E)
                        ],
                      ),
                    ),
                    child: Column(
                      children: [
                        Text('QR Talkie',
                            style: CustomFontStyle().common(
                                fontSize: 29.11.sp,
                                fontWeight: FontWeight.w700,
                                color: white)),
                        Text(
                            'You can message with unknown \npersons using QR Talki',
                            style: CustomFontStyle().common(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: white)),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: CustomButton(
                            text: "Login",
                            textColor: white,
                            bgColor: primaryColor,
                            onPress: () {
                               Navigator.push(context, MaterialPageRoute(builder:(context) {
                                return const LoginPage();
                              },));
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: CustomButton(
                            text: 'Sign Up',
                            textColor: primaryColor,
                            bgColor: white,
                            onPress: () {
                              Navigator.push(context, MaterialPageRoute(builder:(context) {
                                return SignUp();
                              },));
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
