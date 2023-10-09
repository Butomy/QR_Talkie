import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/utils/colors.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';
import 'package:flutter_switch/flutter_switch.dart';

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
    return Scaffold(backgroundColor: white,
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
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: black2c,
                ),
              ),
            )),
        centerTitle: true,
        title: Text(
          'Chat Settings',
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
                    style: CustomFontStyle().common(color: black2c,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  FlutterSwitch(
                      width: 46.32.w,
                      height: 23.75.h,
                      activeColor: yellow,
                      inactiveColor: yellow,
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
              color: black2c,
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
                            color: black2c,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        FlutterSwitch(
                            width: 46.32.w,
                            height: 23.75.h,
                            activeColor: yellow,
                            inactiveColor: yellow,
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
                    color: black2c,
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
                            color: black2c,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        FlutterSwitch(
                            width: 46.32.w,
                            height: 23.75.h,
                            activeColor: yellow,
                            inactiveColor: yellow,
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
                    color: black2c,
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
                            color: black2c,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        FlutterSwitch(
                            width: 46.32.w,
                            height: 23.75.h,
                            activeColor: yellow,
                            inactiveColor: yellow,
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
                    color: black2c,
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
