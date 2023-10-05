import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
  const CustomTextField(
      {super.key,
      this.controller,
      this.onTap,
      this.hintText,
      this.keyboardType,
      this.hintstyle,
      this.maxLine,
      this.validator,
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
    return TextFormField(
      onTap: widget.onTap,
      readOnly: widget.readonly,
      focusNode: widget.focusNode,
      style: CustomFontStyle().common(
          color: Color(0xFF242424),
          fontWeight: FontWeight.w600,
          fontSize: 13.sp),
      maxLength: widget.maxLength,
      maxLines: widget.maxLine,
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      validator: widget.validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: widget.isPasswordType ? _obscureText : false,
      cursorColor: Colors.black12,
      decoration: InputDecoration(
          counter: const SizedBox.shrink(),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
          constraints: BoxConstraints(minHeight: 55.h),
          hintText: widget.hintText,
          hintStyle: widget.hintstyle ??
              CustomFontStyle().common(
                  color: Color(0xFF808080),
                  fontWeight: FontWeight.w600,
                  fontSize: 13.sp),
          suffixIcon: widget.isPasswordType
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  child: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                    color: Color(0xFF808080),
                  ),
                )
              : null,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.black12)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.redAccent)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.black12)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.black12))),
    );
  }
}
