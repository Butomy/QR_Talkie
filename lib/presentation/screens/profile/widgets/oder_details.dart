import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/custom_font_style.dart';

class OderDetails extends StatefulWidget {
  const OderDetails({Key? key}) : super(key: key);

  @override
  State<OderDetails> createState() => _OderDetailsState();
}

class _OderDetailsState extends State<OderDetails> {
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
            preferredSize: Size.fromHeight(16.0.h),
            child:Divider(
              height: 0.h,
            )),
      ),
      backgroundColor: white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:  EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                width: double.infinity,
                height: 45.h,
                decoration: const BoxDecoration(color: Color(0xFFF5F5F5)),
                child: Text(
                  'Order ID - OD5327865747',
                  style: CustomFontStyle().common(
                    color: const Color(0xFF2C2C2C),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 17.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 17.53.h, bottom: 17.86.h),
                      width: double.infinity.w,
                      height: MediaQuery.of(context).size.height / 6.h,
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
                                margin: EdgeInsets.symmetric(
                                    horizontal: 12.w, vertical: 13.67.h),
                                width: 77.27.w,
                                height: 66.59.h,
                                decoration: ShapeDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        "assets/images/qr_table.png"),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(1.33),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'QR Card by QR Talki',
                                      textAlign: TextAlign.center,
                                      style: CustomFontStyle().common(
                                        color: const Color(0xFF2C2C2C),
                                        fontSize: 13.28.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      'Type - Regular',
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
                                      'AED 150.00',
                                      textAlign: TextAlign.center,
                                      style: CustomFontStyle().common(
                                        color: const Color(0xFF2C2C2C),
                                        fontSize: 13.28.sp,
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
                                  'Delivery by 20th Aug 2023',
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
                    ),
                    Text(
                      'Shipping Details',
                      style: CustomFontStyle().common(
                        color: const Color(0xFF2C2C2C),
                        fontSize: 13.62.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
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
                      padding: const EdgeInsets.only(left: 25, top: 5.6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hannibal Smith',
                            style: CustomFontStyle().common(
                                color: Colors.black
                                    .withOpacity(0.5600000023841858),
                                fontSize: 13.62.sp,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Lavilla Apartments, Flat No 35\nDubai Downtown,Dubai, UAE",
                            style: CustomFontStyle().common(
                                color: Colors.black
                                    .withOpacity(0.5600000023841858),
                                fontSize: 13.62.sp,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 14.65,
                          ),
                          Text(
                            "Mobile - 8756346512",
                            style: CustomFontStyle().common(
                                color: Colors.black
                                    .withOpacity(0.5600000023841858),
                                fontSize: 13.62.sp,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 0.80,
                color: const Color(0xFF2C2C2C),
                endIndent: 0,
                indent: 0,
                height: 21.h,
              ),
Padding(
  padding:  EdgeInsets.symmetric(horizontal: 16.w),
  child:   Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
      'Price Details',
      style: CustomFontStyle().common(
        color: const Color(0xFF2C2C2C),
        fontSize: 13.62.sp,
        fontWeight: FontWeight.w500,
      ),
    ),
    SizedBox(height:12.h,),
    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Selling Price',
          style: CustomFontStyle().common(
            color: const Color(0xFF979797),
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          'AED 150',
          style: CustomFontStyle().common(
            color: const Color(0xFF2C2C2C),
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        )
      ],),
    SizedBox(height:8.h,),
    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Extra Discount',
          style: CustomFontStyle().common(
            color: const Color(0xFF979797),
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          'AED 0',
          style: CustomFontStyle().common(
            color: const Color(0xFF2C2C2C),
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        )
      ],),
    SizedBox(height: 8.h,),
    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Shipping fee',
          style: CustomFontStyle().common(
            color: const Color(0xFF979797),
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          'AED 20',
          style: CustomFontStyle().common(
            color: const Color(0xFF2C2C2C),
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        )
      ],),
  ],),
),

              Divider(
                thickness: 0.50,
                color: const Color(0xFF2C2C2C),
                endIndent: 0,
                indent: 0,
                height: 16.h,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Amount',
                      style: CustomFontStyle().common(
                        color: const Color(0xFF979797),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),


                    Text(
                      'AED 170',
                      style: CustomFontStyle().common(
                        color: const Color(0xFF2C2C2C),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
