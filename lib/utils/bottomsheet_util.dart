import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

void bottomSheet({BuildContext? context, content}) {
  showModalBottomSheet(
    backgroundColor: white,
    shape: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8.r), topRight: Radius.circular(8.r))),
    useSafeArea: true,
    isScrollControlled: true,
    context: context!,
    builder: (BuildContext context) {
      return content;
    },
  );
}
