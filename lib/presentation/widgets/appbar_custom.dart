// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import '../../utils/custom_font_style.dart';
//
// class AppBarCustom extends StatelessWidget {
//   String? title;
//   bool centerTitle;
//   double? elivation;
//   List<Widget>? action;
//   Widget? leading;
//   AppBarCustom(
//       {Key? key,
//       this.title,
//       this.centerTitle = true,
//       this.leading,
//       this.action,
//       this.elivation = 0})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       elevation: elivation,
//       backgroundColor: Colors.white,
//       leading: leading ??
//           InkWell(
//             onTap: () {
//               Navigator.pop(context);
//             },
//             child: Container(
//               margin: const EdgeInsets.all(8),
//               width: 30,
//               height: 30,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Colors.grey[200],
//               ),
//               child: const Center(
//                 child: Icon(
//                   Icons.chevron_left,
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//           ),
//       title: Text(
//         title ?? '',
//         style: CustomFontStyle().common(
//           color: Color(0xFF414141),
//           fontSize: 17.sp,
//           fontWeight: FontWeight.w600,
//         ),
//       ),
//       centerTitle: centerTitle,
//       actions: action,
//     );
//   }
// }

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
