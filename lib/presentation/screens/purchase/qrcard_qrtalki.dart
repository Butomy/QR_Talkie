import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../utils/colors.dart';

class QrCard extends StatefulWidget {
  const QrCard({Key? key}) : super(key: key);

  @override
  State<QrCard> createState() => _QrCardState();
}

final controller = PageController(viewportFraction: 0.8, keepPage: true);

class _QrCardState extends State<QrCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        height: MediaQuery.of(context).size.height / 10,
        elevation: 0,
        color: white,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
          ),
          child: Row(
            children: [
              Container(
                width: 50.69.w,
                height: 48.h,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF0EFEF),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: const Icon(
                  Icons.star_border,
                  color: Color(0xFF979797),
                ),
              ),
              SizedBox(
                width: 8.92.w,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.5.w,
                height: 48.h,
                decoration: ShapeDecoration(
                  color: const Color(0xFF006CEC),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: Center(
                  child: Text(
                    'Place Order',
                    textAlign: TextAlign.center,
                    style: CustomFontStyle().common(
                      color: white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: black,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity.w,
              height: MediaQuery.of(context).size.height,
            ),
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width.w,
                  height: MediaQuery.of(context).size.height / 2.4,
                  decoration: ShapeDecoration(
                      color: red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: const Image(
                    image: AssetImage(
                      "assets/images/qr-code-table 1.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                )),
            Positioned(
                left: 20,
                top: 35,
                right: MediaQuery.of(context).size.width / 1.w,
                child: const Icon(
                  Icons.arrow_back,
                  color: white,
                )),
            Positioned(
              // top: 9,
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.5.h,
                decoration: const ShapeDecoration(
                  color: white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 4,
                      offset: Offset(0, -2),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 12.h,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SmoothPageIndicator(
                          controller: controller, // PageController
                          count: 4,
                          effect: ExpandingDotsEffect(
                            activeDotColor: const Color(0xFF006CEC),
                            dotColor: Color(0x490086EC),
                            dotWidth: 5.58.w,
                            dotHeight: 5.58.h,
                          ), // your preferred effect
                          onDotClicked: (index) {}),
                    ),
                    SizedBox(
                      height: 20.62.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'QR Card by QR Talki',
                          textAlign: TextAlign.center,
                          style: CustomFontStyle().common(
                            color: const Color(0xFF2C2C2C),
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'AED - 150.00',
                          textAlign: TextAlign.center,
                          style: CustomFontStyle().common(
                            color: const Color(0xFF006CEC),
                            fontSize: 14.77.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Type - Regular',
                      textAlign: TextAlign.center,
                      style: CustomFontStyle().common(
                        color: const Color(0xFFC0C0C0),
                        fontSize: 13.27.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 16.47.h,
                    ),
                    Text(
                      'Qorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
                      style: TextStyle(
                        color: black.withOpacity(0.5600000023841858),
                        fontSize: 12.83.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 11.25, bottom: 17),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFF0EFEF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x0FEA4C89),
                            blurRadius: 16,
                            offset: Offset(0, 0),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      width: double.infinity.w,
                      height: 56.h,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              'Regular - 150 AED',
                              style: CustomFontStyle().common(
                                color: const Color(0xFF333333),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Container(
                              width: 24.w,
                              height: 24.h,
                              decoration: ShapeDecoration(
                                color: const Color(0x190086EC),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(69.33),
                                ),
                              ),
                              child: const Icon(
                                Icons.arrow_drop_down,
                                color: Color(0xFF006CEC),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      decoration: ShapeDecoration(
                        color: const Color(0xFFF0EFEF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x0FEA4C89),
                            blurRadius: 16,
                            offset: Offset(0, 0),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      width: double.infinity.w,
                      height: 56.h,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              'Quantity',
                              style: CustomFontStyle().common(
                                color: const Color(0xFF333333),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(right: 11),
                              width: 24.w,
                              height: 24.h,
                              decoration: ShapeDecoration(
                                color: const Color(0x190086EC),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(69.33),
                                ),
                              ),
                              child: const Icon(
                                Icons.remove_sharp,
                                color: Color(0xFF006CEC),
                                size: 15,
                              )),
                          Text(
                            '01',
                            style: CustomFontStyle().common(
                              color: const Color(0xFF333333),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 11.w),
                              width: 24.w,
                              height: 24.h,
                              decoration: ShapeDecoration(
                                color: const Color(0x190086EC),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(69.33),
                                ),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Color(0xFF006CEC),
                                size: 15,
                              )
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 21.03, bottom: 20),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 18),
                      width: double.infinity.w,
                      height: 54.32.h,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFDFF0FF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x00000000),
                            blurRadius: 4,
                            offset: Offset(3, 4),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total',
                            style: CustomFontStyle().common(
                              color: const Color(0xFF333333),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'AED  150.00',
                            textAlign: TextAlign.center,
                            style: CustomFontStyle().common(
                              color: const Color(0xFF333333),
                              fontSize: 14.55.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
