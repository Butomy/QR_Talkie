import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/utils/colors.dart';

import '../../../../utils/custom_font_style.dart';

class OderHistory extends StatefulWidget {
  const OderHistory({Key? key}) : super(key: key);

  @override
  State<OderHistory> createState() => _OderHistoryState();
}

List<AssetImage> images = [
  const AssetImage("assets/images/qr_table.png"),
  const AssetImage("assets/images/image 4.png"),
  const AssetImage("assets/images/image 5.png")
];
List<String> data = [
  "QR Card by QR Talki",
  "QR Card by QR Talki",
  "QR Card by QR Talki"
];
List<String> type = [
  'Type - Regular',
  'Type - Metallic',
  'Type - Plastic',
];
List<String> date = [
  'Delivery by 20th Aug 2023',
  'Delivery by 15th Aug 2023',
  'Delivered by 10th Aug 2023'
];
List<String> aed = [
  'AED 150.00',
  'AED 250.00',
  'AED 180.00',
];

class _OderHistoryState extends State<OderHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        centerTitle: true,
        title: Text(
          'Order History',
          textAlign: TextAlign.center,
          style: CustomFontStyle().common(
            color: const Color(0xFF2C2C2C),
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        leadingWidth: 140.w,
        leading: Row(
          children: [
            SizedBox(
              width: 16.w,
            ),
            Container(
              padding: const EdgeInsets.all(1.0),
              decoration: const BoxDecoration(
                color: Color(0Xffd6d6d6), // Border color
                shape: BoxShape.circle,
              ),
              child: const CircleAvatar(
                backgroundColor: white,
                radius: 21,
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Color(0xFF2C2C2C),
                ),
              ),
            ),
          ],
        ),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(16.0.h), child: const Divider()),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
                image: const AssetImage(
                  "assets/images/home.png",
                ),
                width: 23.w,
                height: 24.211.h),
            Image(
                image: const AssetImage("assets/images/Vector.png"),
                width: 26.w,
                height: 26.h),
            Image(
                image: const AssetImage("assets/images/QR.png"),
                width: 27.w,
                height: 27.h),
          ],
        ),
      ),
      backgroundColor: white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
            child: Column(
              children: [
                ListView.builder(
                    itemCount: data.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(top: 12.h),
                        width: double.infinity.w,
                        height: MediaQuery.of(context).size.height / 6.5,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFF0EFEF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.02),
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 13.67),
                                  width: 77.27.w,
                                  height: 66.59.h,
                                  decoration: ShapeDecoration(
                                    image:
                                        DecorationImage(image: images[index]),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(1.33),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        data[index],
                                        textAlign: TextAlign.center,
                                        style: CustomFontStyle().common(
                                          color: const Color(0xFF2C2C2C),
                                          fontSize: 13.28.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        type[index],
                                        textAlign: TextAlign.center,
                                        style: CustomFontStyle().common(
                                          color: const Color(0xFFC0C0C0),
                                          fontSize: 10.37.sp,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Text(
                                        aed[index],
                                        textAlign: TextAlign.center,
                                        style: CustomFontStyle().common(
                                          color: const Color(0xFF2C2C2C),
                                          fontSize: 13.28,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.chevron_right_outlined,
                                      color: Color(0xFF2C2C2C),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(11.47),
                              child: Row(
                                children: [
                                  Text(
                                    date[index],
                                    textAlign: TextAlign.center,
                                    style: CustomFontStyle().common(
                                      color: const Color(0xFF2C2C2C),
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
