import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/custom_font_style.dart';

class AddressTile extends StatelessWidget {
  final bool canEdit;
  const AddressTile({Key? key, this.canEdit = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(
              image: const AssetImage(
                "assets/images/home.png",
              ),
              width: 15.76.w,
              height: 15.76.h,
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              'Home',
              style: CustomFontStyle().common(
                color: const Color(0xFF2C2C2C),
                fontSize: 13.62.sp,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 25.w, top: 5.6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hannibal Smith',
                maxLines: 1,
                style: CustomFontStyle().common(
                    color: Colors.black.withOpacity(0.5600000023841858),
                    fontSize: 13.62.sp,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "Lavilla Apartments, Flat No 35 Dubai Downtown,Dubai, UAE",
                style: CustomFontStyle().common(
                    color: Colors.black.withOpacity(0.5600000023841858),
                    fontSize: 13.62.sp,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 14.65.h,
              ),
              Text(
                "Mobile - 8756346512",
                style: CustomFontStyle().common(
                    color: Colors.black.withOpacity(0.5600000023841858),
                    fontSize: 13.62.sp,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10.h,
              ),
              canEdit == true
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/images/Delete.png",
                          width: 20.18.w,
                          height: 22.08.h,
                        ),
                        Text(
                          'Remove',
                          style: CustomFontStyle().common(
                            color: const Color(0xFF2C2C2C),
                            fontSize: 13.62.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 27.5.w,
                        ),
                        Image.asset(
                          "assets/images/Edit.png",
                          width: 15.39,
                          height: 15.39,
                        ),
                        Text(
                          'Edit',
                          style: CustomFontStyle().common(
                            color: const Color(0xFF2C2C2C),
                            fontSize: 13.62.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ],
    );
  }
}
