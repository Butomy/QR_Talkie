
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/utils/colors.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color? colors;
  final FontWeight? fontWeight;
  final double? fontSize;
  final TextAlign? textAlign;
  final int? maxline;

  const CustomText(
      {super.key,
      required this.text,
      this.colors,
      this.fontWeight,
      this.fontSize,
      this.maxline,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxline,
      style: TextStyle(
        fontFamily: "Poppins",
        fontWeight: fontWeight ?? FontWeight.w400,
        color: colors ?? white,
        fontSize: fontSize ?? 16.sp,
      ),
    );
  }
}
