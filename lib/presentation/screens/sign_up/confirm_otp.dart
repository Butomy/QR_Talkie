import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/screens/sign_up/profile_setup.dart';
import 'package:qr_talkie/presentation/widgets/custom_button.dart';
import 'package:qr_talkie/utils/colors.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';

import 'package:pin_input_text_field/pin_input_text_field.dart';

class Confirmpage extends StatefulWidget {
  const Confirmpage({super.key});

  @override
  State<Confirmpage> createState() => _ConfirmpageState();
}

class _ConfirmpageState extends State<Confirmpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: ScreenUtil().screenHeight * 0.35,
              padding: EdgeInsets.only(
                top: ScreenUtil().statusBarHeight,
                left: 16,
                right: 16,
              ),
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/Frame 438.png"),
                      fit: BoxFit.fitWidth)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                InkWell(onTap:(){ Navigator.pop(context);},
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20.r,
                      child: Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: primaryColor,
                          size: 20.sp,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Confirm OTP',
                    style: CustomFontStyle().common(
                      color: Colors.white,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                    ),
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
            SizedBox(
              height: 118.h,
              child: Padding(
                padding: EdgeInsets.all(30),
                child: PinInputTextField(
                    pinLength: 4,
                    decoration: BoxLooseDecoration(
                        strokeColorBuilder: const FixedColorBuilder(greyef),
                        radius: Radius.circular(8.r),
                        bgColorBuilder: const FixedColorBuilder(greyef))),
              ),
            ),
            const Spacer(),
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    CustomButton(
                      text: "Verify",
                      bgColor: primaryColor,
                      onPress: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context) {
                          return const ProfileSetup();
                        },));
                      },
                      textColor: white,
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
    );
  }
}
