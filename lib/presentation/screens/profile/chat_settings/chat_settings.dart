import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/utils/colors.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../../widgets/appbar_custom.dart';

class ChatSettings extends StatefulWidget {
  const ChatSettings({Key? key}) : super(key: key);

  @override
  State<ChatSettings> createState() => _ChatSettingsState();
}

bool visible = false;
bool name = false;
bool email = false;
bool number = false;

class _ChatSettingsState extends State<ChatSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: PreferredSize(
        preferredSize:
            Size(AppBar().preferredSize.width, AppBar().preferredSize.height),
        child: AppBarCustom(
          leadingIconColor: black2c,
          title: "Chat Settings",
          titleStyle: CustomFontStyle().common(
            color: const Color(0xFF2B2B2B),
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 26),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'View Enquirer details?',
                    style: CustomFontStyle().common(
                      color: const Color(0xFF2C2C2C),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  FlutterSwitch(
                      width: 46.32.w,
                      height: 23.75.h,
                      activeColor: const Color(0xFFFCD635),
                      inactiveColor: const Color(0xFFFCD635),
                      toggleSize: 20.sp,
                      toggleColor: white,
                      value: visible,
                      borderRadius: 11.88,
                      // showOnOff: true,
                      onToggle: (val) {
                        setState(() {
                          visible = val;
                        });
                      })
                ],
              ),
            ),
            Divider(
              thickness: 0.50.sp,
              height: 26.h,
              color: const Color(0xFF2C2C2C),
            ),
            if (visible)
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Name',
                          style: CustomFontStyle().common(
                            color: const Color(0xFF2C2C2C),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        FlutterSwitch(
                            width: 46.32.w,
                            height: 23.75.h,
                            activeColor: const Color(0xFFFCD635),
                            inactiveColor: const Color(0xFFFCD635),
                            toggleSize: 20.sp,
                            toggleColor: white,
                            value: name,
                            borderRadius: 11.88,
                            // showOnOff: true,
                            onToggle: (bool newValue) {
                              setState(() {
                                name = newValue;
                              });
                            }),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 0.50.sp,
                    height: 26.h,
                    color: const Color(0xFF2C2C2C),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Email Id',
                          style: CustomFontStyle().common(
                            color: const Color(0xFF2C2C2C),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        FlutterSwitch(
                            width: 46.32.w,
                            height: 23.75.h,
                            activeColor: const Color(0xFFFCD635),
                            inactiveColor: const Color(0xFFFCD635),
                            toggleSize: 20.sp,
                            toggleColor: white,
                            value: email,
                            borderRadius: 11.88,
                            // showOnOff: true,
                            onToggle: (bool newValue) {
                              setState(() {
                                email = newValue;
                              });
                            })
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 0.50.sp,
                    height: 26.h,
                    color: const Color(0xFF2C2C2C),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Phone Number',
                          style: CustomFontStyle().common(
                            color: const Color(0xFF2C2C2C),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        FlutterSwitch(
                            width: 46.32.w,
                            height: 23.75.h,
                            activeColor: const Color(0xFFFCD635),
                            inactiveColor: const Color(0xFFFCD635),
                            toggleSize: 20.sp,
                            toggleColor: white,
                            value: number,
                            borderRadius: 11.88,
                            // showOnOff: true,
                            onToggle: (bool newValue) {
                              setState(() {
                                number = newValue;
                              });
                            })
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 0.50.sp,
                    height: 26.h,
                    color: const Color(0xFF2C2C2C),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
