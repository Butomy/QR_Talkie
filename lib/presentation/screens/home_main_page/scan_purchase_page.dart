import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/screens/home_main_page/home_main.dart';
import 'package:qr_talkie/presentation/screens/home_main_page/scan_purchase_updated_page.dart';
import 'package:qr_talkie/presentation/widgets/custom_button.dart';
import 'package:qr_talkie/utils/colors.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ScanPurchaseScreen extends StatefulWidget {
  const ScanPurchaseScreen({super.key});

  @override
  State<ScanPurchaseScreen> createState() => _ScanPurchaseScreenState();
}

class _ScanPurchaseScreenState extends State<ScanPurchaseScreen> {
  List imges = [
    "assets/images/Group 322.png",
    "assets/images/Group 322.png",
    "assets/images/Group 322.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: primaryColor,
        //  toolbarHeight: 80.h,
        backgroundColor: primaryColor,
        leading: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 42.w,
                height: 42.h,
                decoration: BoxDecoration(
                    color: white,
                    shape: BoxShape.circle,
                    border: Border.all(width: 0.8, color: greybeb)),
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: blueca,
                ),
              ),
            )),
        centerTitle: true,
        title: Text(
          'Your QR Code',
          style: CustomFontStyle().common(
            color: white,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Container(
          color: primaryColor,
          height: ScreenUtil().screenHeight,
          width: ScreenUtil().screenWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  // width: ScreenUtil().screenWidth / 1.8,
                  // height: ScreenUtil().screenHeight / 4,
                  margin: EdgeInsets.all(8.0),
                  decoration: ShapeDecoration(
                    color: white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(26.17),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x30000000),
                        blurRadius: 4,
                        offset: Offset(3, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Text(
    'Active',
    textAlign: TextAlign.center,
    style: TextStyle(
        color: black,
        fontSize: 20.23.sp,
        fontWeight: FontWeight.w600,
    ),
),
                      Image.asset("assets/images/Group 322.png",height: 250,),
                    ],
                  ),
                ),
              ),
              Center(
                child: SmoothPageIndicator(
                  controller: PageController(),
                  count: 5,
                  effect: ExpandingDotsEffect(
                    dotHeight: 10,
                    dotWidth: 10,
                    activeDotColor: white,
                    dotColor: Colors.white.withOpacity(0.4699999988079071),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15,top: 20),
                child: Text(
                  'Linked Asset',
                  textAlign: TextAlign.center,
                  style: CustomFontStyle().common(
                    color: white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(margin: EdgeInsets.all(15.0),
                width: 341,
                height: 102.23,
                decoration: ShapeDecoration(
                  color: Colors.black.withOpacity(0.17000000178813934),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.02),
                  ),
                ),
              )
            ],
          )),
      bottomSheet: Container(
        color: primaryColor,
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: CustomButton(
            text: 'Update Details',
            textColor: blue6ec,
            bgColor: white,
            onPress: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const AssetspageUpdated();
              }));
            },
          ),
        ),
      ),
    );
  }
}
