
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_talkie/presentation/widgets/custom_button.dart';
import 'package:qr_talkie/utils/colors.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';
import 'package:stepper_a/stepper_a.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'add_address.dart';
class CheckOutOne extends StatefulWidget {
  const CheckOutOne({Key? key}) : super(key: key);

  @override
  State<CheckOutOne> createState() => _CheckOutOneState();
}final StepperAController controller = StepperAController();
class _CheckOutOneState extends State<CheckOutOne> {
  int currentStep = 0;
  int activeStep = 0;
  int activeStep2 = 0;
  int reachedStep = 0;
  int upperBound = 5;
  double progress = 0.2;
  Set<int> reachedSteps = <int>{0, 2, 4, 5};

  // final dashImages = [
  //   'assets/1.png',
  //   'assets/2.png',
  //   'assets/3.png',
  //   'assets/4.png',
  //   'assets/5.png',
  // ];

  void increaseProgress() {
    if (progress < 1) {
      setState(() => progress += 0.2);
    } else {
      setState(() => progress = 0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: const Icon(
          Icons.arrow_back,
          color: black2c,
        )),
        centerTitle: true, title: Text(
        'Checkout',
        style: CustomFontStyle().common(
          color: black2c,
          fontSize: 16.sp,

          fontWeight: FontWeight.w500,
        ),
      ),

      ),
      body:
      SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              EasyStepper(direction: Axis.horizontal,
                activeStep: activeStep,
                // lineLength: 70,
                lineStyle: LineStyle(
                  lineLength: 90.w,
                  lineWidth: 1,
                  lineSpace: 0,
                  defaultLineColor: lightgrey,
                  finishedLineColor: black2f,
                ),
                activeStepTextColor: black2c,
                finishedStepTextColor: black2c,
                internalPadding: 0,
                alignment: Alignment.topCenter,
                showLoadingAnimation: false,
                stepRadius: 14,
                showStepBorder: false,

                steps: [
                  EasyStep(
                    customStep: CircleAvatar(
                      radius: 14,
                      backgroundColor:
                      activeStep >= 0 ? black2f : lightgrey,
                      child: Text(
                        '1',
                        style: CustomFontStyle().common(
                          color: white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    title: 'Address',
                  ),
                  EasyStep(
                    customStep: CircleAvatar(radius: 14,
                      backgroundColor:
                      activeStep >= 1 ? black2f : lightgrey, child: Text(
                        '2',
                        style: CustomFontStyle().common(
                          color: white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ), title: 'Summary',
                  ),

                  EasyStep(
                    customStep: CircleAvatar(radius: 14,
                      backgroundColor:
                      activeStep >= 2 ? black2f : lightgrey, child: Text(
                        '2',
                        style: CustomFontStyle().common(
                          color: white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    title: 'Payment',
                  ),
                ],
                onStepReached: (index) =>
                    setState(() => activeStep = index),
              ),
              const Divider(),
              IndexedStack(
                index: activeStep,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Choose Address',
                            style: CustomFontStyle().common(
                              color: black2c,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(margin: const EdgeInsets.only(top: 9.93),
                            padding: EdgeInsets.only(top: 18.49,
                                bottom: 17.6,
                                left: 16.91,
                                right: 20.3),
                            width: double.infinity,
                            // height: 205.53,
                            decoration: ShapeDecoration(
                              color: lightblue,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1, color: primaryColor),
                                borderRadius: BorderRadius.circular(7.02.r),
                              ),
                            ),
                            child:Row(
                              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Hannibal Smith',
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(
                                            0.5600000023841858),
                                        fontSize: 13.62,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                        letterSpacing: -0.35,
                                      ),
                                    ), Text(
                                      'Lavilla Apartments, Flat No 35 ',
                                      style: CustomFontStyle().common(
                                        color: Colors.black.withOpacity(
                                            0.5600000023841858),
                                        fontSize: 13.62.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      'Dubai Downtown',
                                      style: CustomFontStyle().common(
                                        color: Colors.black.withOpacity(
                                            0.5600000023841858),
                                        fontSize: 13.62.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      'Dubai, UAE',
                                      style: CustomFontStyle().common(
                                        color: black.withOpacity(
                                            0.5600000023841858),
                                        fontSize: 13.62.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(height: 15.41.h,),
                                    Text(
                                      'Mobile - 8756346512',
                                      style: CustomFontStyle().common(
                                        color: black.withOpacity(
                                            0.5600000023841858),
                                        fontSize: 13.62.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(height: 21.11.h,),
                                    Row(
                                      children: [
                                        SvgPicture.asset("assets/svgs/Delete.svg"),
                                        Text(
                                          'Remove',
                                          style: CustomFontStyle().common(
                                            color: black2c,
                                            fontSize: 13.62.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ), SizedBox(width: 27.5.w,),
                                        SvgPicture.asset("assets/svgs/Edit.svg"),
                                        Text(
                                          ' Edit',
                                          style: CustomFontStyle().common(
                                            color: black2c,
                                            fontSize: 13.62.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )
                                      ],),
                                  ],
                                ),     Radio(value: 1, groupValue: 'null', onChanged: (index) {}),

                              ],),
                          ),

                          Container(margin: const EdgeInsets.symmetric(
                              vertical: 16.75),
                            width: double.infinity,
                            height: 49.14.h,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFDFF0FF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7.02),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                        return AddAddress();
                                      }));
                                },
                                  child: Container(
                                      margin: const EdgeInsets.only(right: 5),
                                      width: 24.w,
                                      height: 24.h,
                                      decoration: ShapeDecoration(
                                        color: const Color(0x190086EC),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              69.33),
                                        ),
                                      ),
                                      child: const Icon(
                                        Icons.add, color: Color(0xFF006CEC),)

                                  ),
                                ),
                                Text(
                                  'Add New Address',
                                  style: CustomFontStyle().common(
                                    color: const Color(0xFF006CEC),
                                    fontSize: 14.04.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),


                              ],),
                          )
                        ],
                      ),
                    ),
                  ),

                  Container(
                    // ... Your Summary page content here ...
                  ),
                  // Content for 'Payment' page
                  Container(
                    // ... Your Payment page content here ...
                  ),

                ],
              ),

            ],
          ),
        ),
      ),bottomNavigationBar: BottomAppBar(color: white,elevation:0,child:  Padding(
      padding: const EdgeInsets.only(left: 18,right:18,bottom:8),
      child: CustomButton(text: 'Continue',textColor: white,bgColor: primaryColor,minSize: Size(double.infinity,50.h),onPress: (){},),
    ) ,),
    );
  }

}
