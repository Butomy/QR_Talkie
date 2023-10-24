import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/screens/profile/widgets/oder_history.dart';
import 'package:qr_talkie/presentation/screens/profile/widgets/settings_page.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';

import '../../../utils/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF006CEC),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:const EdgeInsets.only(left: 16, top: 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 21,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Color(0xff0086ec),
                          size: 21,
                        ))),
              ),
            ),
            Stack(children: [
              const CircleAvatar(
                backgroundImage: AssetImage("assets/images/image 2.jpg"),
                radius: 50,
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: 28,
                  height: 28,
                  decoration: ShapeDecoration(
                    color: Colors.black.withOpacity(0.5),
                    shape: const OvalBorder(
                      side: BorderSide(width: 1, color: Color(0xFFA5A5A5)),
                    ),
                  ),
                  child: const Icon(
                    Icons.camera_alt_outlined,
                    color: Color(0xFFA5A5A5),
                  ),
                ),
              )
            ]),
            const SizedBox(
              height: 12,
            ),
            Text(
              'Hannibal Smith',
              style: CustomFontStyle().common(
                color: white,
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'Hannibalsmith@gmail.com',
              style: CustomFontStyle().common(
                color: Colors.white,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 40),
                padding: const EdgeInsets.only(top: 25),
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 1.2,
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const OderHistory();
                          }));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 40.w,
                                height: 40.h,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFDFF0FF),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                                child: const Icon(
                                  Icons.alarm,
                                  color: Color(0xFF006CEC),
                                ),
                              ),
                              const SizedBox(
                                width: 14,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Order History",
                                      style: CustomFontStyle().common(
                                        color: const Color(0xFF2C2C2C),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      "Track your order & See previous orders",
                                      style: CustomFontStyle().common(
                                        color: Colors.black.withOpacity(0.5),
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const Icon(
                                Icons.chevron_right_outlined,
                                color: Color(0xFF2C2C2C),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 0.50,
                        color: const Color(0xFF2C2C2C),
                        height: 16.h,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const SettingPage();
                          }));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 40.w,
                                height: 40.h,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFDFF0FF),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                                child: const Icon(
                                  Icons.settings,
                                  color: Color(0xFF006CEC),
                                ),
                              ),
                              const SizedBox(
                                width: 14,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Settings",
                                      style: CustomFontStyle().common(
                                        color: const Color(0xFF2C2C2C),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      "Personal  Data, Change Password, Chat settings",
                                      style: CustomFontStyle().common(
                                        color: Colors.black.withOpacity(0.5),
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const Icon(
                                Icons.chevron_right_outlined,
                                color: Color(0xFF2C2C2C),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 0.50,
                        color: const Color(0xFF2C2C2C),
                        height: 16.h,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 40.w,
                                height: 40.h,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFDFF0FF),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                                child: const Icon(
                                  Icons.star_border_outlined,
                                  color: Color(0xFF006CEC),
                                ),
                              ),
                              SizedBox(
                                width: 14.w,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Rate Us",
                                      style: CustomFontStyle().common(
                                        color: const Color(0xFF2C2C2C),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      "Feed back",
                                      style: CustomFontStyle().common(
                                        color: Colors.black.withOpacity(0.5),
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const Icon(
                                Icons.chevron_right_outlined,
                                color: Color(0xFF2C2C2C),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 0.50,
                        color: const Color(0xFF2C2C2C),
                        height: 16.h,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 40.w,
                                height: 40.h,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFDFF0FF),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                                child: const Icon(
                                  Icons.logout_outlined,
                                  color: Color(0xFF006CEC),
                                ),
                              ),
                              const SizedBox(
                                width: 14,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Log out",
                                      style: CustomFontStyle().common(
                                        color: const Color(0xFF2C2C2C),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      "Log out your Account",
                                      style: CustomFontStyle().common(
                                        color: Colors.black.withOpacity(0.5),
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const Icon(
                                Icons.chevron_right_outlined,
                                color: Color(0xFF2C2C2C),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 0.50,
                        color: const Color(0xFF2C2C2C),
                        height: 16.h,
                      ),


                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
