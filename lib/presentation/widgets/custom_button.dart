
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:qr_talkie/utils/colors.dart';

// class CustomButton extends StatelessWidget {
//   final Function()? onPress;
//   bool isLoading;
//   final String text;
//   final Widget? icon;
//   final Color? bgColor;
//   final Color? textColor;
//   final BorderSide? borderSide;
//   final TextStyle? textStyle;
//   final Size? minSize;
//   final BorderRadiusGeometry? borderRadius;
//   final Widget? leftIcon;

//   CustomButton({
//     this.onPress,
//     required this.text,
//     this.icon,
//     super.key,
//     this.bgColor,
//     this.borderSide,
//     this.isLoading = false,
//     this.textStyle,
//     this.textColor,
//     this.minSize,
//     this.borderRadius,
//     this.leftIcon,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       style: ElevatedButton.styleFrom(
//         elevation: 0,
//         minimumSize: minSize ?? const Size(double.infinity, 50),
//         backgroundColor: bgColor ?? primaryColor,
//         shape: RoundedRectangleBorder(
//           side: borderSide ?? BorderSide.none,
//           borderRadius: borderRadius ?? BorderRadius.circular(5.0),
//         ),
//       ),
//       onPressed: isLoading ? null : onPress,
//       child: isLoading
//           ? kLoading
//           : Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 leftIcon ?? const SizedBox(),
//                 const SizedBox(width: 10),
//                 Text(text,
//                     style: textStyle ??
//                         CustomFontStyle().common(
//                             height: 0,
//                             color: textColor ?? raisinBlack,
//                             fontWeight: FontWeight.w800,
//                             fontSize: 16.sp)),
//                 Visibility(
//                     visible: icon != null,
//                     child: const SizedBox(
//                       width: 5,
//                     )),
//                 icon ?? const SizedBox.shrink()
//               ],
//             ),
//     );
//   }
// }
