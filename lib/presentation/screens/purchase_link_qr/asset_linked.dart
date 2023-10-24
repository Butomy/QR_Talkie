import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/screens/home_main_page/home_main.dart';
import 'package:qr_talkie/presentation/widgets/custom_button.dart';
import 'package:qr_talkie/utils/colors.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';

class Assetspagelinked extends StatefulWidget {
  const Assetspagelinked({super.key});

  @override
  State<Assetspagelinked> createState() => _AssetspagelinkedState();
}

class _AssetspagelinkedState extends State<Assetspagelinked> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: primaryColor,
        height: ScreenUtil().screenHeight,
        width: ScreenUtil().screenWidth,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/check 1.png",
                height: 90.h,
              ),
              Text(
                'Your Asset Has been linked',
                style: CustomFontStyle().common(
                  color: white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'You Can view your asset from “Your QR’s”',
                textAlign: TextAlign.center,
                style: CustomFontStyle().common(
                  color: white,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ]),
      ),
      bottomSheet: Container(
        color: primaryColor,
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: CustomButton(
            text: 'Back to Home',
            textColor: blue6ec,
            bgColor: white,
            onPress: () {
             
                Navigator.push(context,MaterialPageRoute(builder:(context){
                   return const HomemainPage();
              }));

            },
          ),
        ),
      ),
    );
  }
}
