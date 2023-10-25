import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/screens/profile/order_history/oder_history.dart';
import 'package:qr_talkie/presentation/screens/profile/settings/settings_page.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';

import '../../../utils/colors.dart';
import 'widgets/customRow.dart';

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
              padding: const EdgeInsets.only(left: 16, top: 25),
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
            SizedBox(
              height: 15.h,
            ),
            Stack(children: [
              CircleAvatar(
                backgroundImage: const AssetImage(
                  "assets/images/image 2.jpg",
                ),
                radius: 50.r,
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
                    size: 15,
                    color: Color(0xFFA5A5A5),
                  ),
                ),
              )
            ]),
            SizedBox(
              height: 12.h,
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
                      CustomRow(
                        heading: "Order History",
                        text: "Track your order & See previous orders",
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const OderHistory();
                          }));
                        },
                        leadingimages: const AssetImage(
                          "assets/images/b22.png",
                        ),
                        //
                      ),
                      Divider(
                        thickness: 0.50,
                        color: const Color(0xFF2C2C2C),
                        height: 16.h,
                      ),
                      CustomRow(
                        heading: "Settings",
                        text: "Personal  Data, Change Password, Chat settings",
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const SettingPage();
                          }));
                        },
                        leadingimages:
                            const AssetImage("assets/images/b14.png"),
                      ),
                      Divider(
                        thickness: 0.50,
                        color: const Color(0xFF2C2C2C),
                        height: 16.h,
                      ),
                      CustomRow(
                        heading: "Rate Us",
                        text: "Feed back",
                        onPressed: () {},
                        leadingimages:
                            const AssetImage("assets/images/b13.png"),
                      ),
                      Divider(
                        thickness: 0.50,
                        color: const Color(0xFF2C2C2C),
                        height: 16.h,
                      ),
                      CustomRow(
                        onPressed: () {},
                        heading: 'Log out',
                        text: 'Log out your Account',
                        leadingimages:
                            const AssetImage("assets/images/b12.png"),
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
