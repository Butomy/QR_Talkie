import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/screens/home_main_page/home_main.dart';
import 'package:qr_talkie/presentation/screens/login/widgets/social_button.dart';
import 'package:qr_talkie/presentation/screens/profile/add_address/add_address.dart';
import 'package:qr_talkie/presentation/screens/sign_up/signup_page.dart';
import 'package:qr_talkie/presentation/widgets/custom_button.dart';
import 'package:qr_talkie/utils/colors.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';
import 'package:qr_talkie/utils/validation_util.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_textfield.dart';
import '../bottom_navigation/bottom_navigation.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController numberCtrl = TextEditingController();
  final TextEditingController passCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        backgroundColor: white,
        body: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Container(
            height: ScreenUtil().screenHeight,
            width: ScreenUtil().screenWidth,
            decoration: const BoxDecoration(
              color: primaryColor,
              // image: DecorationImage(
              //     image: AssetImage("assets/images/Frame 438.png"),
              //     fit: BoxFit.cover)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomAppBar(
                        leadingBg: white,
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).padding.top,
                          bottom: 10.h,
                        ),
                      ),
                      Text(
                        'Welcome Back',
                        style: CustomFontStyle().common(
                          color: Colors.white,
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text('Login Now to access your\nQR Talki Account',
                          style: CustomFontStyle().common(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: white)),
                      SizedBox(
                        height: 30.h,
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 25.h),
                    decoration: const BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextField(
                          // validator: (val) {
                          //   dynamic a = "100.5";
                          //   if (val!.isEmpty) {
                          //     return "enter number";
                          //   } else {
                          //     if (num.parse(val) <= num.parse(a)) {
                          //       return "abc";
                          //     } else {
                          //       return "123";
                          //     }
                          //   }
                          // },

                          // ValidationUtil(context).phoneValidation,
                          hintText: "Phone number",
                          controller: numberCtrl,
                          keyboardType: TextInputType.number,
                          hintstyle: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: grey,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomTextField(
                          controller: passCtrl,
                          // validator: ValidationUtil(context).passwordValidation,
                          hintText: "Password",
                          hintstyle: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: grey),
                          isPasswordType: true,
                          maxLine: 1,
                          onTap: () {},
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            'Forgot Password ?',
                            style: CustomFontStyle().common(
                              color: grey,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 18.h,
                        ),
                        CustomButton(
                          text: "Login",
                          textColor: white,
                          bgColor: primaryColor,
                          onPress: () {
                            // if (_formKey.currentState!.validate()) {}
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const Bottomnavigationbarcustom();
                              },
                            ));
                          },
                        ),
                        SizedBox(
                          height: 18.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Opacity(
                              opacity: 0.50,
                              child: Container(
                                width: ScreenUtil().screenWidth / 2.5,
                                decoration: const ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 1,
                                      strokeAlign: BorderSide.strokeAlignCenter,
                                      color: black2c,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'OR',
                              style: CustomFontStyle().common(
                                color: black2c,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Opacity(
                              opacity: 0.50,
                              child: Container(
                                width: ScreenUtil().screenWidth / 2.5,
                                decoration: const ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 1,
                                      strokeAlign: BorderSide.strokeAlignCenter,
                                      color: black2c,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 18.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: SocialButton(
                                socialImage: 'assets/images/Google.png',
                                onTap: () {},
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Expanded(
                              child: SocialButton(
                                socialImage:
                                    'assets/images/icons8-apple-30.png',
                                onTap: () {},
                              ),
                            ),
                          ],
                        ),

                        const Spacer(),
                        // Expanded(child: SizedBox()),
                        Align(
                          alignment: Alignment.center,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Don\'t have an account ? ',
                                  style: CustomFontStyle().common(
                                    color: black2c,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context) {
                                          return const SignUp();
                                        },
                                      ));
                                    },
                                  text: 'Sign Up',
                                  style: CustomFontStyle().common(
                                    color: blue6ec,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
