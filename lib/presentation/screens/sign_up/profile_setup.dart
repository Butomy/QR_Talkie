import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/screens/sign_up/unlock_profile_page.dart';
import 'package:qr_talkie/presentation/widgets/custom_button.dart';
import 'package:qr_talkie/presentation/widgets/custom_textfield.dart';
import 'package:qr_talkie/utils/colors.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';

import '../../widgets/appbar_custom.dart';

class ProfileSetup extends StatefulWidget {
  // final String? name;
  const ProfileSetup({
    super.key,
    // this.name
  });

  @override
  State<ProfileSetup> createState() => _ProfileSetupState();
}

class _ProfileSetupState extends State<ProfileSetup> {
  String? dropvalue;
  var items = [
    'United States',
    'Canada',
    'United Kingdom',
    'Australia',
    'Germany',
    'France',
    'Italy',
    'Spain',
    'Japan',
    'China',
    'India',
    'Brazil',
    'Mexico',
    'Argentina',
    'Russia',
    'South Africa',
    'Egypt',
    'Kenya',
    'Nigeria',
    // Add more country names as needed
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadValue();
  }

  _loadValue() {
    var isContain = items.firstWhere(
        orElse: () => "false", (element) => element == 'Monthly');
    if (isContain != "false") {
      dropvalue = isContain;
    }
    debugPrint(isContain);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: ScreenUtil().screenHeight,
          width: ScreenUtil().screenWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: ScreenUtil().screenHeight * 0.35,
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                ),
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/Frame 438.png"),
                        fit: BoxFit.fitWidth)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomAppBar(
                      leadingBg: white,
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).padding.top,
                        bottom: 10.h,
                      ),
                    ),
                    Text(
                      'Set up your profile',
                      style: CustomFontStyle().common(
                          color: Colors.white,
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w600,
                          height: 2),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text('One more step to access your \nQR Talki Account ',
                        style: CustomFontStyle().common(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: white))
                  ],
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      CustomTextField(
                        suffixIcon: const Icon(
                          Icons.check,
                          color: grey,
                        ),
                        hintText: "Name",
                        hintstyle: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: grey,
                        ),
                      ),
                      CustomTextField(
                        suffixIcon: const Icon(
                          Icons.check,
                          color: grey,
                        ),
                        hintText: "Phone number",
                        hintstyle: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: grey),
                        isPasswordType: false,
                        maxLine: 1,
                        onTap: () {},
                      ),
                      CustomTextField(
                        suffixIcon: const Icon(
                          Icons.check,
                          color: grey,
                        ),
                        hintText: "Email",
                        hintstyle: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: grey,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        width: ScreenUtil().screenWidth,
                        height: 56.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xfff0efef)),
                        child: DropdownButton(
                          isExpanded: true,
                          hint: Text(
                            'Country',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: grey,
                            ),
                          ),
                          underline: const SizedBox(
                            height: 0,
                          ),
                          value: dropvalue,
                          icon: Icon(
                            Icons.arrow_drop_down_circle_outlined,
                            size: 20,
                            color: dropvalue == null ? grey : primaryColor,
                          ),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(
                                items,
                                style: CustomFontStyle().common(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: black,
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropvalue = newValue!;
                            });
                          },
                        ),
                      ),
                      const Spacer(),
                      CustomButton(
                        text: "Continue",
                        bgColor: primaryColor,
                        onPress: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return Unlockpage();
                            },
                          ));
                        },
                        textColor: white,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomSheet: Container(
      //   color: white,
      //   child: Padding(
      //       padding: const EdgeInsets.all(16.0),
      //       child: CustomButton(
      //         text: "Continue",
      //         bgColor: primaryColor,
      //         onPress: () {
      //           Navigator.push(context, MaterialPageRoute(
      //             builder: (context) {
      //               return Unlockpage();
      //             },
      //           ));
      //         },
      //         textColor: white,
      //       )),
      // ),
    );
  }
}
