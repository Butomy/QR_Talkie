import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/custom_font_style.dart';

class CustomRow extends StatelessWidget {
  final String heading;
  final Widget? leadingIconWidget;
  final String? text;
  final ImageProvider<Object> leadingimages;
  final void Function()? onPressed;
  final Color? leadingBgColor;
  final Color? trailingIconColor;
  const CustomRow(
      {super.key,
      required this.heading,
      this.leadingIconWidget,
      this.onPressed,
      this.text,
      required this.leadingimages,
      this.leadingBgColor,
      this.trailingIconColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                width: 40.w,
                height: 40.h,
                decoration: ShapeDecoration(
                  color: leadingBgColor ?? const Color(0xFFDFF0FF),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: Center(
                    child: leadingIconWidget ??
                        Image(
                          image: leadingimages,
                          width: 24.w,
                          height: 24.h,
                        ))),
            SizedBox(
              width: 14.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    heading,
                    style: CustomFontStyle().common(
                      color: black2c,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    text ?? "",
                    style: CustomFontStyle().common(
                      color: black.withOpacity(0.5),
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            Icon(
              Icons.chevron_right_outlined,
              color: trailingIconColor ?? const Color(0xFF2C2C2C),
            ),
          ],
        ),
      ),
    );
  }
}
