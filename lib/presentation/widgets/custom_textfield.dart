import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/utils/colors.dart';

import '../../utils/custom_font_style.dart';

class CustomTextField extends StatefulWidget {
  final void Function()? onTap;
  final String? hintText;
  final bool isPasswordType;
  final int? maxLength;
  final int? maxLine;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final TextStyle? hintstyle;
  final bool readonly;
  final FocusNode? focusNode;
  final Widget? suffixIcon;
  const CustomTextField(
      {super.key,
      this.controller,
      this.onTap,
      this.hintText,
      this.keyboardType,
      this.hintstyle,
      this.maxLine,
      this.validator,
      this.suffixIcon,
      this.focusNode,
      this.isPasswordType = false,
      this.readonly = false,
      this.maxLength});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: TextFormField(
        onTap: widget.onTap,
        readOnly: widget.readonly,
        focusNode: widget.focusNode,
        style: CustomFontStyle().common(
            color: const Color(0xFF242424),
            fontWeight: FontWeight.w400,
            fontSize: 14.sp),
        maxLength: widget.maxLength,
        maxLines: widget.maxLine,
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        validator: widget.validator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        obscureText: widget.isPasswordType ? _obscureText : false,
        cursorColor: primaryColor,
        decoration: InputDecoration(
            counter: const SizedBox.shrink(),
            fillColor: const Color(0xFFF0EFEF),
            filled: true,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            constraints: BoxConstraints(minHeight: 65.h),
            hintText: widget.hintText,
            hintStyle: widget.hintstyle ??
                CustomFontStyle().common(
                    color: const Color(0xFFA8A7A7),
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp),
            suffixIcon: widget.suffixIcon ??
                (widget.isPasswordType
                    ? GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        child: Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Color(0xFFB5B5B5),
                        ),
                      )
                    : null),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: primaryColor)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.redAccent)),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Color(0xFFF0EFEF))),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Color(0xFFF0EFEF)))),
      ),
    );
  }
}
