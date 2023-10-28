import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/screens/bottom_navigation/bottom_navigation.dart';
import 'package:qr_talkie/presentation/screens/purchase_link_qr/category_screen.dart';
import 'package:qr_talkie/presentation/widgets/custom_button.dart';
import 'package:qr_talkie/utils/colors.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';

import '../purchase/purchase_card.dart';

class ScanOrPurchaseScreen extends StatefulWidget {
  const ScanOrPurchaseScreen({super.key});

  @override
  State<ScanOrPurchaseScreen> createState() => _ScanOrPurchaseScreenState();
}

class _ScanOrPurchaseScreenState extends State<ScanOrPurchaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black10,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/Group 331.png",
              height: 30.h,
              width: 50.w,
            ),
            Text(
              'QR Talkie ',
              style: CustomFontStyle().common(
                color: whitefo,
                fontSize: 16.87.sp,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
      ),
      body: Container(
        width: ScreenUtil().screenWidth,
        height: ScreenUtil().screenHeight,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 25.h),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.r),
              topRight: Radius.circular(16.r),
            ),
          ),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Stack(
              // fit: StackFit.loose,
              // clipBehavior: Clip.none,
              children: [
                CircleAvatar(
                  radius: 100.r,
                  backgroundColor: bluuefc,
                  child: Center(
                    child: Image.asset(
                      "assets/images/Group 322.png",
                      height: 100.h,
                    ),
                  ),
                ),
                Positioned(
                    bottom: 5,
                    child: CircleAvatar(
                      backgroundColor: blue6ec,
                      child: Image.asset(
                        "assets/images/Mobile.png",
                        height: 25.h,
                      ),
                    )),
                Positioned(
                    right: 10,
                    child: CircleAvatar(
                      backgroundColor: blue6ec,
                      child: Image.asset(
                        "assets/images/Dashboard.png",
                        height: 25.h,
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Scan or Purchase \nQR Code',
              textAlign: TextAlign.center,
              style: CustomFontStyle().common(
                color: black2c,
                fontSize: 22.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: Text(
                'Qorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et',
                textAlign: TextAlign.center,
                style: CustomFontStyle().common(
                  color: Colors.black.withOpacity(0.5600000023841858),
                  fontSize: 13.95.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            // Spacer(),
            CustomButton(
              text: 'Link QR Code',
              bgColor: lightblue,
              onPress: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const Categorypage();
                  },
                ));
              },
              textColor: blue6ec,
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomButton(
              text: 'Purchase QR code',
              bgColor: primaryColor,
              onPress: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const PurchaseCardList();
                  },
                ));
              },
              textColor: white,
            ),
          ],
        ),
      ),
    );
  }
}
