import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/colors.dart';
import '../../../../../utils/custom_font_style.dart';
class CustomRow extends StatelessWidget {
  final String heading;
  final String text;
  final bool validate;
  final FontWeight? fontweight;
  final double? size;
  final double? width;
  final ImageProvider<Object>leadingimages;
  final void Function()? onPressed;
  const CustomRow({
    super.key, required this.heading,this.fontweight, this.size, this.width, this.onPressed,
    required this.text, required this.validate,   required this.leadingimages,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 40.w,
              height: 40.h,
              decoration: ShapeDecoration(
                color: validate ?Color(0xFFDFF0FF): Color(0xFFF0EFEF),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
              child: Center(child: Image(image: leadingimages,width: 24.w,height: 24.h,))
            ),
            const SizedBox(
              width: 14,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                  heading,
                    style: CustomFontStyle().common(
                        color:black2c,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(validate?
                    text:"",
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

              color: validate?Color(0xFF2C2C2C): Color(0xFF8C8C8C),
            ),

          ],
        ),
      ),
    );
  }
}