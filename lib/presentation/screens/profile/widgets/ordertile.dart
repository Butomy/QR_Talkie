import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/custom_font_style.dart';

class OrderTile extends StatelessWidget {
  final bool? isCheck;
  final bool? isDelete;
  final bool? isForward;
  final void Function()? onTap;
  final  bool isDate;
  const OrderTile(
      {Key? key,
      this.isCheck = false,
      this.isForward = false,
      this.isDelete = false,
        this.isDate=true,
      this.onTap})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          padding: const EdgeInsets.all(12),
          width: ScreenUtil().screenWidth,
          decoration: ShapeDecoration(
            color: const Color(0xFFF0EFEF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7.02),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 5),
                        width: 77.27.w,
                        height: 66.59.h,
                        decoration: ShapeDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assets/images/qr_table.png"),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1.33),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(
                                    'QR Card by QR Taki',
                                    // textAlign: TextAlign.center,
                                    style: CustomFontStyle().common(
                                      color: const Color(0xFF2B2B2B),
                                      fontSize: 13.28.sp,
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                isCheck == true
                                    ? const Icon(
                                        Icons.check_box,
                                        color: primaryColor,
                                      )
                                    : const SizedBox()
                              ],
                            ),
                            Text(
                              'Type - Regular',
                              textAlign: TextAlign.center,
                              style: CustomFontStyle().common(
                                color: const Color(0xFFC0C0C0),
                                fontSize: 10.37.sp,
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'AED 150.00',
                                  textAlign: TextAlign.center,
                                  style: CustomFontStyle().common(
                                    color: const Color(0xFF2B2B2B),
                                    fontSize: 13.28.sp,
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                                isForward == true
                                    ? const Icon(Icons.chevron_right_sharp)
                                    : const SizedBox(),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              isDate==false? const SizedBox() :     Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delivery by 20th Aug 2023  ',
                    textAlign: TextAlign.center,
                    style: CustomFontStyle().common(
                      color: const Color(0xFF2B2B2B),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  isDelete == true
                      ? InkWell(
                          onTap: () {
                            print('delete');
                          },
                          child: Text(
                            'Delete',
                            textAlign: TextAlign.center,
                            style: CustomFontStyle().common(
                              color: const Color(0xFFE21313),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        )
                      : const SizedBox()
                ],
              ),
            ],
          )),
    );
  }
}
