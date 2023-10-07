import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';

import '../../../utils/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

List<String> data1 = ["Order History", "Settings", "Rate Us", "Log out"];
List<String> data2 = [
  "Track your order & See previous orders",
  "Personal  Data, Change Password, Chat settings",
  "Feed back",
  "Log out your Account"
];
List<IconData> icons = [
  Icons.alarm,
  Icons.settings,
  Icons.star_border_outlined,
  Icons.logout_outlined
];

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF006CEC),
      bottomNavigationBar: const BottomAppBar(
        elevation: 0,
        color: white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.home_filled,
              color: Color(0xFFC0C0C0),
            ),
            Icon(
              Icons.message_rounded,
              color: Color(0xFFC0C0C0),
            ),
            Icon(
              Icons.qr_code_2_outlined,
              color: Color(0xFFC0C0C0),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 16, top: 25),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 21,
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: Color(0xff0086ec),
                    size: 21,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Stack(children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/image 2.png"),
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
              ),
              const SizedBox(
                height: 12,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Hannibal Smith',
                  style: CustomFontStyle().common(
                    color: white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Hannibalsmith@gmail.com',
                  style: CustomFontStyle().common(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
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
                child: Column(
                  children: [
                    ListView.separated(physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: icons.length,
                        itemBuilder: (context, i) {
                          return Padding(
                            padding: const EdgeInsets.only(
                              left: 16,
                              right: 16,
                            ),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 40.w,
                                  height: 40.h,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFDFF0FF),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8)),
                                  ),
                                  child: Icon(
                                    icons[i],
                                    color: const Color(0xFF006CEC),
                                  ),
                                ),
                                const SizedBox(
                                  width: 14,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        data1[i],
                                        style: CustomFontStyle().common(
                                          color: const Color(0xFF2C2C2C),
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        data2[i],
                                        style: CustomFontStyle().common(
                                          color:
                                              Colors.black.withOpacity(0.5),
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
                          );
                        }, separatorBuilder: (BuildContext context, int index) {
                          return    const Divider(
                            thickness: 0.50,
                            color: Color(0xFF2C2C2C),
                            height: 16,
                          );
                    },)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
