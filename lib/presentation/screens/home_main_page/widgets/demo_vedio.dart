import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/custom_font_style.dart';

class DemoVideoPlay extends StatelessWidget {
  const DemoVideoPlay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().screenWidth,
      height: 174.h,
      decoration: ShapeDecoration(
        image: const DecorationImage(
          image: AssetImage("assets/images/Rectangle 140.png"),
          fit: BoxFit.cover,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Learn about QR Talki!',
            textAlign: TextAlign.center,
            style: CustomFontStyle().common(
              color: white,
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'Corem ipsum dolor sit amet, consectetur adipiscing elit.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 10.31.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
