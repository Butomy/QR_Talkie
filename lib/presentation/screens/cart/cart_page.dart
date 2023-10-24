import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/widgets/appbar_custom.dart';
import 'package:qr_talkie/presentation/widgets/custom_button.dart';
import 'package:qr_talkie/utils/colors.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  List checkvlue = [false, false, false];
  bool checkboxvalue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar:PreferredSize(preferredSize: Size(0,0), child: CustomAppBar()) ,
      appBar: AppBar(surfaceTintColor: white,
        toolbarHeight: 80.h,
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
                  color: blueca,
                ),
              ),
            )),
        centerTitle: true,
        title: Text(
          'Cart',
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
        child: Column(
          children: [
            Container(
                height: 70.h,
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.only(top: 8, bottom: 8, left: 5, right: 5),
                decoration: BoxDecoration(color: greyF5),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Address : Home',
                          style: CustomFontStyle().common(
                            color: black2c,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Hannibal Smith Lavilla Apartments, Flat No 35 Dubai Dow',
                          overflow: TextOverflow.fade,
                          style: CustomFontStyle().common(
                            color: Colors.black.withOpacity(0.5600000023841858),
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    Text(
                      'Change',
                      style: CustomFontStyle().common(
                        fontSize: 12.sp,
                        color: blue6ec,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                )),
            ListView.separated(
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Checkbox(
                                activeColor: primaryColor,
                                value: checkvlue[index],
                                onChanged: (value) {
                                  setState(() {
                                    checkvlue[index] = value!;
                                  });
                                },
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
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Delivery by 20th Aug 2023',
                            textAlign: TextAlign.center,
                            style: CustomFontStyle().common(
                              color: Color(0xFF2C2C2C),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Delete',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: red13,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox();
              },
              itemCount: 3,
            ),
            Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.only(top: 8),
              decoration: ShapeDecoration(
                color: greyF5,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0.40,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
              child: Row(
                children: [
                  Checkbox(
                    activeColor: primaryColor,
                    value: checkboxvalue,
                    onChanged: (value) {
                      setState(() {
                        checkboxvalue = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      '1/2 ITEMS SELECTED',
                      style: CustomFontStyle().common(
                        color: black2c,
                        fontSize: 13.62.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Image.asset("assets/images/Frame (1).png",
                      height: 25, width: 50.w),
                  Image.asset(
                    "assets/images/Frame (2).png",
                    height: 25,
                    width: 25,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  Text(
                    'Price Details',
                    style: CustomFontStyle().common(
                      color: black2c,
                      fontSize: 13.62.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Selling Price',
                        style: TextStyle(
                          color: black97,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'AED 150',
                        style: TextStyle(
                          color: black2c,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Extra Discount',
                        style: TextStyle(
                          color: black97,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'AED 20',
                        style: TextStyle(
                          color: black2c,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shipping Fee',
                        style: TextStyle(
                          color: black97,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'AED 50',
                        style: TextStyle(
                          color: black2c,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  
                 Padding(
                   padding: const EdgeInsets.only(top: 5,bottom: 5),
                   child: CustomPaint(painter:DrawDottedhorizontalline() ),
                 ),
                           Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Amount',
                        style: TextStyle(
                          color: black97,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'AED 220',
                        style: TextStyle(
                          color: black2c,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  
             
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,bottom: 20),
              child: CustomButton(
                text: "Place Order",
                textColor: white,
                bgColor: primaryColor,
                onPress: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DrawDottedhorizontalline extends CustomPainter {
  Paint? _paint;
  DrawDottedhorizontalline() {
    _paint = Paint();
    _paint!.color = greyc0; 
    _paint!.strokeWidth = 1; 
    _paint!.strokeCap = StrokeCap.square; 
  }

  @override
  void paint(Canvas canvas, Size size) {
    for (double i = -300; i < 400; i = i + 15) {
      if (i % 3 == 0)
        canvas.drawLine(Offset(i, 0.0), Offset(i + 5, 0.0), _paint!);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}