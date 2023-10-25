import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/screens/sign_up/profile_setup.dart';
import 'package:qr_talkie/presentation/widgets/custom_button.dart';
import 'package:qr_talkie/utils/colors.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';

import '../../widgets/custom_appbar.dart';

class Confirmpage extends StatefulWidget {
  const Confirmpage({super.key});

  @override
  State<Confirmpage> createState() => _ConfirmpageState();
}

class _ConfirmpageState extends State<Confirmpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: ScreenUtil().screenHeight * 0.35,
                padding: const EdgeInsets.only(
                  // top: ScreenUtil().statusBarHeight,
                  left: 16,
                  right: 16,
                ),
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/Frame 438.png"),
                        fit: BoxFit.fitWidth)),
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
                      'Confirm OTP',
                      style: CustomFontStyle().common(
                          color: Colors.white,
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w600,
                          height: 2),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text('Qorem ipsum dolor sit ametr \nadipiscing elit. ',
                        style: CustomFontStyle().common(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: white))
                  ],
                ),
              ),
              Flexible(
                child: Container(
                  decoration: const BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: PinInputTextField(
                            pinLength: 4,
                            decoration: BoxLooseDecoration(
                                strokeColorBuilder:
                                    const FixedColorBuilder(ash_eef),
                                radius: Radius.circular(6.r),
                                bgColorBuilder:
                                    const FixedColorBuilder(ash_eef))),
                      ),
                      // const Spacer(),
                      Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              CustomButton(
                                text: "Verify",
                                bgColor: primaryColor,
                                onPress: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return const ProfileSetup();
                                    },
                                  ));
                                },
                                textColor: white,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Didn’t receive a code ?",
                                      style: CustomFontStyle().common(
                                        color: black97,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    TextSpan(
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          // Navigator.push(context, MaterialPageRoute(
                                          //   builder: (context) {
                                          //     return const LoginPage();
                                          //   },
                                          // ));
                                        },
                                      text: ' Resend',
                                      style: CustomFontStyle().common(
                                        color: blue6ec,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
