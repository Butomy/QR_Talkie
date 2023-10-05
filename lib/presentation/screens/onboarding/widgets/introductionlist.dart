import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/utils/colors.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';

class IntroductionList extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String subTitle;
  final double? imageWidth;
  final double? imageHeight;

  const IntroductionList(
      {required this.imageUrl,
      required this.title,
      required this.subTitle,
      this.imageWidth,
      this.imageHeight});

  @override
  State<StatefulWidget> createState() {
    return IntroductionListState();
  }
}

class IntroductionListState extends State<IntroductionList> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.loose,
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          height: ScreenUtil().screenHeight,
          width: ScreenUtil().screenWidth,
          child: Image.asset(
            widget.imageUrl,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          // top: 0,
          // right: 0,
          // bottom: 0,
          // left: 0,
          child: Padding(
            padding: EdgeInsets.only(top: ScreenUtil().screenHeight / 3),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  widget.title,
                  style: CustomFontStyle().common(
                    color: white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  widget.subTitle,
                  style: CustomFontStyle().common(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: white),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
