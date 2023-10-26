import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qr_talkie/presentation/screens/profile/widgets/checkout1.dart';
import 'package:qr_talkie/presentation/widgets/custom_button.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../utils/colors.dart';

class QrCard extends StatefulWidget {
  const QrCard({Key? key}) : super(key: key);

  @override
  State<QrCard> createState() => _QrCardState();
}
final controller = PageController(viewportFraction: 0.8, keepPage: true);
// ignore: non_constant_identifier_names
String ?Select ='Regular - 150 AED';
int count=0;
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
                  color: ash_eef,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r)),
                ),
                child:
                Center(child: SvgPicture.asset("assets/svgs/star.svg",width: 24.93.w,height: 24.93.h,)),

                // Image(image: AssetImage("assets/images/star.svg"),),
              ),
              SizedBox(
                width: 8.92.w,
              ),
              CustomButton(text:    'Place Order',textStyle: CustomFontStyle().common(  fontSize: 16.sp,
                fontWeight: FontWeight.w500,color: white,) ,onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const CheckOutOne();
              }
              )
              );
              },
                textColor: white,bgColor:primaryColor,borderRadius: BorderRadius.circular(8.r),minSize: Size( MediaQuery.of(context).size.width / 1.5.w, 48.h),),

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
                          borderRadius: BorderRadius.circular(8.r))),
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
                child: IconButton(onPressed: (){Navigator.pop(context);}, icon:  const Icon(
                  Icons.arrow_back,
                  color: white,
                ))),
            Positioned(
              // top: 9,
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.5.h,
                decoration: ShapeDecoration(
                  color: white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.r),
                      topRight: Radius.circular(16.r),
                    ),
                  ),
                  shadows: [
                    BoxShadow(
                      color: const Color(0x19000000),
                      blurRadius: 4.r,
                      offset: const Offset(0, -2),
                      spreadRadius: 0.r,
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
                            activeDotColor: primaryColor,
                            dotColor: primlight,
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
                            color: black2c,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'AED - 150.00',
                          textAlign: TextAlign.center,
                          style: CustomFontStyle().common(
                            color: primaryColor,
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
                        color: greyc0,
                        fontSize: 13.27.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 16.47.h,
                    ),
                    Text(
                      'Qorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
                      style: CustomFontStyle().common(
                        color: black.withOpacity(0.5600000023841858),
                        fontSize: 12.83.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                PopupMenuButton<String>(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  offset: Offset(100.w, 30.h),
                  onSelected: (String value) {
                    setState(() {
                      Select = value;
                    });
                  },
                  itemBuilder: (BuildContext context) {
                    return <PopupMenuEntry<String>>[
                      const PopupMenuItem<String>(
                        value: 'Regular - 150 AED',
                        child: Text('Regular - 150 AED'),
                      ),
                      const PopupMenuItem<String>(
                        value: 'Regular - 250 AED',
                        child: Text('Regular - 250 AED'),
                      ),
                      const PopupMenuItem<String>(
                        value: 'Regular - 350 AED',
                        child: Text('Regular - 350 AED'),
                      ),
                    ];
                  },
                  child:Container(
                      margin: const EdgeInsets.only(top: 11.25, bottom: 17),
                      decoration: ShapeDecoration(
                        color: ash_eef,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.r)),
                        shadows:  [
                          BoxShadow(
                            color: const Color(0x0FEA4C89),
                            blurRadius: 16.r,
                            offset: const Offset(0, 0),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      width: double.infinity.w,
                      height: 56.h,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 18),
                      child:

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              Select.toString(),
                              style: CustomFontStyle().common(
                                color: black33,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SvgPicture.asset("assets/svgs/Drop down icon.svg",width: 24.w,height: 24.h,),
                          // DropdownButton<String>(borderRadius: BorderRadius.circular(12.r),underline: SizedBox(),
                          //   items: const [
                          //     DropdownMenuItem<String>(
                          //       value: 'Regular - 150 AED',
                          //       child: Text('Regular - 150 AED'),
                          //     ),
                          //     DropdownMenuItem<String>(
                          //       value: 'Regular - 250 AED',
                          //       child: Text('Regular - 250 AED'),
                          //     ),
                          //     DropdownMenuItem<String>(
                          //       value: 'Regular - 350 AED',
                          //       child: Text('Regular - 350 AED'),
                          //     ),
                          //   ],
                          //   onChanged: (String? selectedValue) {
                          //     Select=selectedValue;
                          //     setState(() {
                          //
                          //     });
                          //   },
                          // )

                        ],
                      )

                  ),
                ),


                    Container(
                      decoration: ShapeDecoration(
                        color: const Color(0xFFF0EFEF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                        shadows:  [
                          BoxShadow(
                            color: const Color(0x0FEA4C89),
                            blurRadius: 16.r,
                            offset: const Offset(0, 0),
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
                                color: black33,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),

                          InkWell(onTap: (){
                            if(count>0) {
                              count--;
                            }
                          setState(() {});},
                            child: Container(
                                margin: const EdgeInsets.only(right: 5),
                                width: 24.w,
                                height: 24.h,
                                decoration: ShapeDecoration(
                                  color: const Color(0x190086EC),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(69.33.r),
                                  ),
                                ),
                                child: const Icon(
                                  Icons.remove_sharp,
                                  color: primaryColor,
                                  size: 15,
                                )),
                          ),
                          Text(
                              count.toString().padLeft(2,"0"),
                            style: CustomFontStyle().common(
                              color: black33,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          InkWell(onTap: (){  count++;
                          setState(() {});},
                            child: Container(
                                margin: EdgeInsets.only(left: 5.w),
                                width: 24.w,
                                height: 24.h,
                                decoration: ShapeDecoration(
                                  color: const Color(0x190086EC),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(69.33),
                                  ),
                                ),
                                child:  Icon(
                                  Icons.add,
                                  color: primaryColor,
                                  size: 15.sp,
                                )
                            ),
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
                              color: black33,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'AED  150.00',
                            textAlign: TextAlign.center,
                            style: CustomFontStyle().common(
                              color:black33,
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
