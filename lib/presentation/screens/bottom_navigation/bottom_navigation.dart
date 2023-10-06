
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
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
          LoginPage(),
          SignUp(),
          Purchasepage(),
          ],
          navBarHeight: 50.h,
          items: [
            PersistentBottomNavBarItem(contentPadding: 0,
              icon:Image.asset("assets/images/home.png",height:20,width: 25,),
              activeColorPrimary: grey,
             inactiveColorPrimary: ash_eef,
            ),
            PersistentBottomNavBarItem(contentPadding: 0,
              icon:Image.asset("assets/images/chat.png",height:20,width: 25,),
              activeColorPrimary: white,
             inactiveColorPrimary: ash_eef,
            ),
            PersistentBottomNavBarItem(contentPadding: 0,
              icon:Image.asset("assets/images/QR.png",height:20,width: 25,),
              activeColorPrimary: white,
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