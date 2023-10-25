import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/screens/profile/saved_address.dart';

import 'package:qr_talkie/presentation/screens/profile/widgets/customRow.dart';

import 'package:qr_talkie/utils/colors.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';

import '../../../widgets/appbar_custom.dart';
import '../../../widgets/custom_button.dart';
import '../chat_settings.dart';
import '../personal_data.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size(AppBar().preferredSize.width, AppBar().preferredSize.height),
        child: AppBarCustom(
          leadingIconColor: black2c,
          centerTitle: true,
          title: "Settings",
          titleStyle: CustomFontStyle().common(
            color: const Color(0xFF2B2B2B),
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
      ),
      backgroundColor: white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomRow(
                        leadingBgColor: ash_eef,
                        heading: "Personal Data",
                        leadingimages: const AssetImage(
                          "assets/images/user (2) 1.png",
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const PersonalData();
                          }));
                        },
                      ),
                      Divider(
                        indent: 16,
                        endIndent: 16,
                        color: Colors.black.withOpacity(0.07999999821186066),
                        height: 25.h,
                      ),
                      CustomRow(
                        leadingBgColor: ash_eef,
                        heading: "Change Password",
                        leadingimages: const AssetImage(
                          "assets/images/Policy.png",
                        ),
                        onPressed: () {},
                      ),
                      Divider(
                        indent: 16,
                        endIndent: 16,
                        color: Colors.black.withOpacity(0.07999999821186066),
                        height: 25.h,
                      ),
                      CustomRow(
                        leadingBgColor: ash_eef,
                        heading: "Chat Settings",
                        leadingimages: const AssetImage(
                          "assets/images/Frame.png",
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const ChatSettings();
                          }));
                        },
                      ),
                      Divider(
                        indent: 16,
                        endIndent: 16,
                        color: Colors.black.withOpacity(0.07999999821186066),
                        height: 25.h,
                      ),
                      CustomRow(
                        leadingBgColor: ash_eef,
                        heading: "Saved Address",
                        leadingimages: const AssetImage(
                          "assets/images/Address.png",
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const SavedAddress();
                          }));
                        },
                      ),
                      Divider(
                        indent: 16,
                        endIndent: 16,
                        color: Colors.black.withOpacity(0.07999999821186066),
                        height: 25.h,
                      ),
                      CustomRow(
                        leadingBgColor: ash_eef,
                        heading: "Report",
                        leadingimages: const AssetImage(
                          "assets/images/Frame (3).png",
                        ),
                        onPressed: () {},
                      ),
                      Divider(
                        indent: 16,
                        endIndent: 16,
                        color: Colors.black.withOpacity(0.07999999821186066),
                        height: 25.h,
                      ),
                      CustomRow(
                        heading: "About",
                        leadingBgColor: ash_eef,
                        leadingimages: const AssetImage(
                          "assets/images/Frame (4).png",
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: CustomButton(
                  minSize: Size(double.infinity, 68.h),
                  borderRadius: BorderRadius.circular(10),
                  leftIcon: const Icon(
                    Icons.headset_mic_outlined,
                    color: primaryColor,
                    size: 25,
                  ),
                  onPress: () {},
                  bgColor: const Color(0xFFDFF0FF),
                  text: 'Feel Free to Ask, We ready to Help',
                  textStyle: CustomFontStyle().common(
                    color: primaryColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
