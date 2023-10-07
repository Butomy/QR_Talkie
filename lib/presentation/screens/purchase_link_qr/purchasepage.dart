import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/screens/purchase_link_qr/linkqr.dart';
import 'package:qr_talkie/presentation/widgets/custom_button.dart';
import 'package:qr_talkie/utils/colors.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';

class Purchasepage extends StatefulWidget {
  const Purchasepage({super.key});

  @override
  State<Purchasepage> createState() => _PurchasepageState();
}

class _PurchasepageState extends State<Purchasepage> {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: black10,
        appBar: AppBar(
          backgroundColor: black,
          title: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
             
              children: [
                Image.asset(
                  "assets/images/Group 331.png",
                  height: 30.h,
                  width:50.w,
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
        ),
        body: Container(
          width: ScreenUtil().screenWidth,
          margin: EdgeInsets.only(top: 15),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.r),
                topRight: Radius.circular(16.r),
              ),
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Column(
               // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Stack(
                    fit: StackFit.loose,
                    clipBehavior: Clip.none,
                    children: [
                      CircleAvatar(
                        radius: 100.r,
                        backgroundColor: bluuefc,
                        child: Image.asset(
                          "assets/images/Group 322.png",
                          height: 100.h,
                        ),
                      ),
                      Positioned(
                          bottom: 10,
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
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Text(
                      'Scan or Purchase \nQR Code',
                      textAlign: TextAlign.center,
                      style: CustomFontStyle().common(
                        color: black2c,
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
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
                  Spacer(),
                   Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CustomButton(
                    text:'Link QR Code',
                    bgColor: lightblue,
                    onPress: () {
                      Navigator.push(context,MaterialPageRoute(builder:(context) {
                        return const Categorypage();
                      },));
                    },
                    textColor: blue6ec,
                  )),
                   Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CustomButton(
                    text:'Purchase QR code',
                    bgColor: primaryColor,
                    onPress: () {
                      // Navigator.push(context,MaterialPageRoute(builder:(context) {
                      //   return Unlockpage();
                      // },));
                    },
                    textColor: white,
                  )),
                ],
              ),
            ),
          ),
        ),
      // bottomSheet: Bottomnavigationbarcustom(),
        );
  }
}
