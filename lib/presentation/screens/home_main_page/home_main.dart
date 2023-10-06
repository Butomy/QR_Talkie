import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/screens/bottom_navigation/bottom_navigation.dart';
import 'package:qr_talkie/utils/colors.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';

class HomemainPage extends StatefulWidget {
  const HomemainPage({super.key});

  @override
  State<HomemainPage> createState() => _HomemainPageState();
}

class _HomemainPageState extends State<HomemainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90.h,
        actions: [
          Stack(
            children: [
              Image.asset(
                "assets/images/Group 82.png",
                height: 40,
                width: 40,
              ),
              const Positioned(
                  right: 0,
                  child: Badge(
                    smallSize: 10,
                    backgroundColor: red,
                  ))
            ],
          ),
          SizedBox(
            width: 5,
          ),
          CircleAvatar(
            backgroundColor: ash_eef,
            child: Icon(
              Icons.more_vert,
              color: black97,
            ),
          ),
          SizedBox(
            width: 5,
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Image.asset(
            "assets/images/Ellipse 20.png",
            height: 45,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Opacity(
              opacity: 0.50,
              child: Text(
                'Hello,',
                style: CustomFontStyle().common(
                  color: Color(0xFF2C2C2C),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Text(
              'Hannibal Smith',
              style: CustomFontStyle().common(
                color: black2c,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
        bottom: PreferredSize(preferredSize: Size(0, 0), child: Divider()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              fit: StackFit.loose,
              clipBehavior: Clip.none,
              children: [
                Image.asset("assets/images/Rectangle 140.png"),
                Positioned(
                  child: Text(
                    'Learn about QR Talki!',
                    textAlign: TextAlign.center,
                    style: CustomFontStyle().common(
                      color: white,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 15, bottom: 15),
              padding: EdgeInsets.all(10.0),
              height: ScreenUtil().screenHeight / 8,
              decoration: ShapeDecoration(
                color: blue6ec,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Purchase Now!',
                          textAlign: TextAlign.center,
                          style: CustomFontStyle().common(
                            color: white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                          )),
                      Text(
                        'Corem ipsum dolor sit amet, consectetur\nadipiscing elit.',
                        style: CustomFontStyle().common(
                          color: white,
                          fontSize: 10.31.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  const CircleAvatar(
                    radius: 24,
                    backgroundColor: greyee,
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: blue6ec,
                      child: Icon(
                        Icons.arrow_forward,
                        color: white,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
