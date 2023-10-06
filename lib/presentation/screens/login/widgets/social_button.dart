import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialButton extends StatelessWidget {
  final Color? buttonColor;
  final BoxConstraints? constraints;
  final String? socialImage;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final void Function()? onTap;
  const SocialButton(
      {Key? key,
      this.buttonColor = const Color(0xFFF0EFEF),
      this.constraints,
      this.socialImage,
      this.padding,
      this.margin,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: margin,
        padding: padding,
        constraints: constraints ??
            BoxConstraints(minHeight: 50, minWidth: ScreenUtil().screenWidth),
        decoration: ShapeDecoration(
          color: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        alignment: Alignment.center,
        child: SizedBox(
          height: 25.w,
          width: 25.w,
          child: Image.asset(
            socialImage ?? '',
          ),
        ),
      ),
    );
  }
}
