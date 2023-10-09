import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/screens/profile/order_details.dart';
import 'package:qr_talkie/presentation/widgets/custom_button.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';

import '../../../../utils/colors.dart';

class OrderHistoryPage extends StatefulWidget {
  const OrderHistoryPage({super.key});

  @override
  State<OrderHistoryPage> createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: white,
        toolbarHeight: 80.h,
        backgroundColor: white,
        leading: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 42.w,
                height: 42.h,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 0.8, color: greybeb)),
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: black2c,
                ),
              ),
            )),
        centerTitle: true,
        title: Text(
          'Order History',
          style: CustomFontStyle().common(
            color: black2c,
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        bottom: PreferredSize(
            preferredSize: Size(0, 0),
            child: Divider(
              height: 0,
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20,top: 10),
          child: Column(
            children: [
              InkWell(onTap: () {
                
                Navigator.push(context,MaterialPageRoute(builder:(context) {
                  return const Orderdetails();
                },));
              },
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      height: ScreenUtil().screenHeight / 7,
                      padding: EdgeInsets.all(8.0),
                      decoration: ShapeDecoration(
                        color: ash_eef,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.02.r),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/images/qr-code-table 1.png",
                                height: 70,
                                //width: 70,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'QR Card by QR Talki',
                                      style: CustomFontStyle().common(
                                        color: black2c,
                                        fontSize: 13.28.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      'Type - Regular',
                                      style: CustomFontStyle().common(
                                        color: greyc0,
                                        fontSize: 10.37.sp,
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                    Text(
                                      'AED 150.00 ',
                                      style: CustomFontStyle().common(
                                        color: black2c,
                                        fontSize: 13.28.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: black2c,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Delivery by 20th Aug 2023',
                            textAlign: TextAlign.center,
                            style: CustomFontStyle().common(
                              color: black2c,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox();
                  },
                  itemCount: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
