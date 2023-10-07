
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:qr_talkie/presentation/screens/chat/chatpage.dart';
import 'package:qr_talkie/presentation/screens/home_main_page/home_main.dart';
import 'package:qr_talkie/presentation/screens/home_main_page/scan_purchase_updated_page.dart';
import 'package:qr_talkie/presentation/screens/login/loginpage.dart';
import 'package:qr_talkie/presentation/screens/purchase_link_qr/purchasepage.dart';
import 'package:qr_talkie/presentation/screens/sign_up/signup_page.dart';
import 'package:qr_talkie/utils/colors.dart';
class Bottomnavigationbarcustom extends StatefulWidget {
  const Bottomnavigationbarcustom({super.key});
  @override
  State<Bottomnavigationbarcustom> createState() => _BottomnavigationbarcustomState();
}
class _BottomnavigationbarcustomState extends State<Bottomnavigationbarcustom> {
  int? color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
          screens: const [
         HomemainPage(),
         Chatpage(),
        AssetspageUpdated()
          ],
          navBarHeight: 50.h,
          items: [
            PersistentBottomNavBarItem(contentPadding: 0,
              icon:Image.asset("assets/images/home.png",height:20,width: 25,),
              inactiveIcon: Image.asset("assets/images/home.png",height:20,width: 25,),
              activeColorPrimary:primaryColor,
             inactiveColorPrimary: ash_eef,
            ),
            PersistentBottomNavBarItem(contentPadding: 0,
              icon:Image.asset("assets/images/chat.png",height:20,width: 25,),
              inactiveIcon:Image.asset("assets/images/chat.png",height:20,width: 25,) ,
              activeColorPrimary:primaryColor,
             inactiveColorPrimary: ash_eef,
            ),
            PersistentBottomNavBarItem(contentPadding: 0,
              icon:Image.asset("assets/images/QR.png",height:20,width: 25,),
              inactiveIcon:Image.asset("assets/images/QR.png",height:20,width: 25,) ,
              activeColorPrimary:primaryColor,
              textStyle:
                  TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400),
              inactiveColorPrimary: ash_eef,
            ),
            ],
          backgroundColor: white,
          popAllScreensOnTapOfSelectedTab: true,
          navBarStyle: NavBarStyle.style8),
    );
  }
}