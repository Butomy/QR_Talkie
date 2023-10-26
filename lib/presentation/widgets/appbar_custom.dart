import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/colors.dart';
import '../../utils/custom_font_style.dart';

class AppBarCustom extends StatelessWidget {
  String? title;
  bool centerTitle;
  double? elivation;
  List<Widget>? action;
  Widget? leading;
  TextStyle? titleStyle;
  Color? leadingIconColor;
  AppBarCustom(
      {Key? key,
      this.title,
      this.centerTitle = true,
      this.titleStyle,
      this.leadingIconColor = primaryColor,
      this.leading,
      this.action,
      this.elivation = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(1),
        child: Divider(height: 1),
      ),
      elevation: elivation,
      backgroundColor: Colors.white,
      leading: leading ??
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              margin: const EdgeInsets.all(8),
              width: 30.w,
              height: 30.w,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey)),
              child: Center(
                child: Icon(
                  Icons.chevron_left,
                  color: leadingIconColor,
                ),
              ),
            ),
          ),
      title: title != null
          ? Text(
              title ?? '',
              style: titleStyle ??
                  CustomFontStyle().common(
                    color: const Color(0xFF2B2B2B),
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
            )
          : const SizedBox(),
      centerTitle: centerTitle,
      actions: action,
    );
  }
}
