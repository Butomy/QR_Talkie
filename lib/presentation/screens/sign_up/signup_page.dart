import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/widgets/custom_button.dart';
import 'package:qr_talkie/utils/colors.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';
import '../../../utils/validation_util.dart';
import '../../widgets/appbar_custom.dart';
import '../../widgets/custom_textfield.dart';
import '../login/widgets/social_button.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController numberCtrl = TextEditingController();
  final TextEditingController passCtrl = TextEditingController();
  final TextEditingController confirmPassCtrl = TextEditingController();
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
            color: primaryColor,
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
                        'New Here?',
                        style: CustomFontStyle().common(
                          color: Colors.white,
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text('Signup today to start you\njourney!',
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
                          validator: ValidationUtil(context).phoneValidation,
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
                          validator: ValidationUtil(context).phoneValidation,
                          hintText: "Create Password",
                          controller: passCtrl,
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
                          controller: confirmPassCtrl,
                          validator: (value) => ValidationUtil(context)
                              .confirmPasswordValidation(
                                  confirmPassCtrl.text, passCtrl.text),
                          hintText: "Confirm Password",
                          hintstyle: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: grey),
                          // isPasswordType: true,
                          maxLine: 1,
                          onTap: () {},
                        ),
                        SizedBox(
                          height: 18.h,
                        ),
                        CustomButton(
                          text: "Sign up",
                          textColor: white,
                          bgColor: primaryColor,
                          onPress: () {
                            // if (_formKey.currentState!.validate()) {}
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
                                  text: 'Sign In',
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
