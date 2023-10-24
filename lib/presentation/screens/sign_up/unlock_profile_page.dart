import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/screens/purchase_link_qr/purchasepage.dart';
import 'package:qr_talkie/presentation/widgets/custom_button.dart';
import 'package:qr_talkie/utils/colors.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';

class UnlockPage extends StatefulWidget {
  const UnlockPage({super.key});

  @override
  State<UnlockPage> createState() => _UnlockPageState();
}

class _UnlockPageState extends State<UnlockPage> {
  double width = 1500;
  double height = 500;
  @override
  void initState() {
    // TODO: implement initState
    imageZoomOut();
    super.initState();
  }

  imageZoomOut() {
    print(width);
    Future.delayed(Duration(microseconds: 50), () {
      setState(() {
        width = 420;
        height == 500;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff0c0c0c),
            Color(0xff1c1c1c),
          ],
        )),
        height: ScreenUtil().screenHeight,
        width: ScreenUtil().screenWidth,
        child: Stack(
          children: [
            Center(
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 1000),
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                    // color: Colors.red,
                    ),

                // width: ScreenUtil().screenWidth,
                // height: ScreenUtil().screenHeight,
                height: width,
                width: height,
                child: Image.asset(
                  "assets/images/phone.png",
                  height: width,
                  width: height,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: ScreenUtil().statusBarHeight * 2,
                  left: 16,
                  bottom: 16,
                  right: 16),
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
                  Expanded(
                    child: Text(
                      'Get your first QR on 10% discount',
                      style: CustomFontStyle().common(
                        color: white,
                        fontSize: 15.63.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
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
                  CustomButton(
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
