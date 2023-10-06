import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/screens/bottom_navigation/bottom_navigation.dart';
import 'package:qr_talkie/presentation/widgets/custom_button.dart';
import 'package:qr_talkie/presentation/widgets/custom_textfield.dart';
import 'package:qr_talkie/utils/colors.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';

class HomemainPage extends StatefulWidget {
  const HomemainPage({super.key});

  @override
  State<HomemainPage> createState() => _HomemainPageState();
}

class _HomemainPageState extends State<HomemainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90.h,
        actions: [
          Stack(
            children: [
              Image.asset(
                "assets/images/Group 82.png",
                height: 40,
                width: 40,
              ),
              const Positioned(
                  right: 0,
                  child: Badge(
                    smallSize: 10,
                    backgroundColor: red,
                  ))
            ],
          ),
          SizedBox(
            width: 5,
          ),
          CircleAvatar(
            backgroundColor: ash_eef,
            child: Icon(
              Icons.more_vert,
              color: black97,
            ),
          ),
          SizedBox(
            width: 5,
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Image.asset(
            "assets/images/Ellipse 20.png",
            height: 45,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Opacity(
              opacity: 0.50,
              child: Text(
                'Hello,',
                style: CustomFontStyle().common(
                  color: Color(0xFF2C2C2C),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Text(
              'Hannibal Smith',
              style: CustomFontStyle().common(
                color: black2c,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
        bottom: PreferredSize(preferredSize: Size(0, 0), child: Divider()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              fit: StackFit.loose,
              clipBehavior: Clip.none,
              children: [
                Image.asset("assets/images/Rectangle 140.png"),
                Positioned(
                  bottom: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Learn about QR Talki!',
                          textAlign: TextAlign.center,
                          style: CustomFontStyle().common(
                            color: white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Corem ipsum dolor sit amet, consectetur adipiscing elit.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.31.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 15, bottom: 15),
              padding: EdgeInsets.all(10.0),
              height: ScreenUtil().screenHeight / 8,
              decoration: ShapeDecoration(
                color: blue6ec,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Purchase Now!',
                          textAlign: TextAlign.center,
                          style: CustomFontStyle().common(
                            color: white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                          )),
                      Text(
                        'Corem ipsum dolor sit amet, consectetur\nadipiscing elit.',
                        style: CustomFontStyle().common(
                          color: white,
                          fontSize: 10.31.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  const CircleAvatar(
                    radius: 24,
                    backgroundColor: greyee,
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: blue6ec,
                      child: Icon(
                        Icons.arrow_forward,
                        color: white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
                width: ScreenUtil().screenWidth,
                height: 267,
                decoration: ShapeDecoration(
                  color: greybeb,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Your Categories',
                        style: TextStyle(
                          color: black2c,
                          fontSize: 20.23.sp,
                          fontWeight: FontWeight.w600,
                        )),
                    Text(
                      'Create your categories to categorize \nyour assets.  ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5600000023841858),
                        fontSize: 12.83.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          backgroundColor: white,
                          shape: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8.r),
                                  topRight: Radius.circular(8.r))),
                          useSafeArea: true,
                          isScrollControlled: true,
                          context: context,
                          builder: (BuildContext context) {
                            return Padding(
                              padding: MediaQuery.of(context).viewInsets,
                              child: Container(
                                width: ScreenUtil().screenWidth,
                                // color: white,
                                decoration: const BoxDecoration(color: white,
                                    borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(24),
                                  topRight: Radius.circular(24),
                                )),
                                padding: EdgeInsets.all(15),
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
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8, bottom: 8),
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
                          },
                        );
                      },
                      child: Container(
                        width: ScreenUtil().screenWidth / 3,
                        height: 49.h,
                        margin: EdgeInsets.all(8),
                        decoration: ShapeDecoration(
                          color: lightblue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.02.r),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add,
                              color: blue6ec,
                            ),
                            Text(
                              'Create',
                              style: TextStyle(
                                color: blue6ec,
                                fontSize: 14.04.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
