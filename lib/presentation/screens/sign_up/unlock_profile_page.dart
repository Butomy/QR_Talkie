import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/screens/purchase_link_qr/purchasepage.dart';
import 'package:qr_talkie/presentation/widgets/custom_button.dart';
import 'package:qr_talkie/utils/colors.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';

class Unlockpage extends StatefulWidget {
  const Unlockpage({super.key});

  @override
  State<Unlockpage> createState() => _UnlockpageState();
}

class _UnlockpageState extends State<Unlockpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black10,
      body: SizedBox(
        height: ScreenUtil().screenHeight,
        child: Padding(
          padding: EdgeInsets.only(
            top: ScreenUtil().statusBarHeight * 2,
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'You have unlocked New User Offer!',
                  style: CustomFontStyle().common(
                    color: white,
                    fontSize: 17.83.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Get your first QR on 10% discount',
                  style: CustomFontStyle().common(
                    color: white,
                    fontSize: 15.63.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Image.asset(
                  "assets/images/modern_qr_code_for_smartphone_3d_render 3.png",
                  fit: BoxFit.fitWidth,
                ),
                Spacer(),
                Text(
                  'Purchase your first QR to start\nyour QR Talki Journey',
                  textAlign: TextAlign.center,
                  style: CustomFontStyle().common(
                    color: Colors.white,
                    fontSize: 16.46.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CustomButton(
                    text: "Continue",
                    bgColor: primaryColor,
                    onPress: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Purchasepage();
                      }));
                    },
                    textColor: white,
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
