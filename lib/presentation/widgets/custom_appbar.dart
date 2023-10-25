import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/utils/colors.dart';

import '../../utils/custom_font_style.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget {
  final String? title;
  final Widget? leading;
  final List<Widget> trailing;
  final Color leadingBg;
  final Color? leadingColor;
  final Color? leadingtitleColor;
  EdgeInsetsGeometry padding;
  CustomAppBar(
      {super.key,
      this.title,
      this.trailing = const <Widget>[],
      this.leading,
      this.leadingBg = grey,
      this.leadingColor = primaryColor,
      this.leadingtitleColor = white,
      this.padding = const EdgeInsets.all(16)});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: leading ??
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(50),
                        ),
                        color: leadingBg),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 20,
                          color: leadingColor,
                        ),
                      ),
                    ),
                  ),
                ),
          ),
          const SizedBox(width: 10),
          Visibility(
            visible: title != null,
            child: Expanded(
              child: Text(
                title ?? "",
                overflow: TextOverflow.ellipsis,
                style: CustomFontStyle().common(
                    color: leadingtitleColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(width: 6),
          Row(
            children: trailing,
          )
        ],
      ),
    );
  }
}
