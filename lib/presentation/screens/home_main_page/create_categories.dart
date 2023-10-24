import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/utils/colors.dart';

import '../../../utils/custom_font_style.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';

class CreateCategories extends StatelessWidget {
  const CreateCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
        width: ScreenUtil().screenWidth,
        // color: white,
        decoration: const BoxDecoration(
            color: white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            )),
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Create category',
              style: CustomFontStyle().common(
                color: black2c,
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'Enter the name of your category',
              style: CustomFontStyle().common(
                color: greyA7,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8, bottom: 8),
              child: CustomTextField(
                hintText: 'Name of Category',
              ),
            ),
            CustomButton(
              text: "Create",
              bgColor: primaryColor,
              textColor: white,
              onPress: () {},
            )
          ],
        ),
      ),
    );
  }
}
