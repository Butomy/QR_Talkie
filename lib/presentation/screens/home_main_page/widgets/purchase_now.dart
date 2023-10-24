import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/custom_font_style.dart';

class PurchaseNow extends StatelessWidget {
  const PurchaseNow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15, bottom: 15),
      padding: const EdgeInsets.all(10.0),
      height: ScreenUtil().screenHeight / 8,
      decoration: ShapeDecoration(
        color: blue6ec,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
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
    );
  }
}
