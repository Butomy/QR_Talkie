import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/screens/bottom_navigation/bottom_navigation.dart';
import 'package:qr_talkie/presentation/screens/cart/cart_page.dart';
import 'package:qr_talkie/presentation/screens/home_main_page/scan_purchase_page.dart';
import 'package:qr_talkie/presentation/screens/home_main_page/widgets/categoriList.dart';
import 'package:qr_talkie/presentation/screens/home_main_page/widgets/demo_vedio.dart';
import 'package:qr_talkie/presentation/screens/home_main_page/widgets/home_create_categories.dart';
import 'package:qr_talkie/presentation/screens/home_main_page/widgets/purchase_now.dart';
import 'package:qr_talkie/presentation/screens/profile/profile_page.dart';
import 'package:qr_talkie/presentation/screens/purchase_link_qr/assetspage.dart';
import 'package:qr_talkie/presentation/widgets/custom_button.dart';
import 'package:qr_talkie/presentation/widgets/custom_textfield.dart';
import 'package:qr_talkie/utils/colors.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';

import '../../../utils/bottomsheet_util.dart';
import 'create_categories.dart';

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
        surfaceTintColor: white,
        toolbarHeight: 90.h,
        actions: [
          Stack(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Cartpage();
                  }));
                },
                child: Image.asset(
                  "assets/images/Group 82.png",
                  height: 40,
                  width: 40,
                ),
              ),
              const Positioned(
                  right: 0,
                  child: Badge(
                    smallSize: 10,
                    backgroundColor: red,
                  ))
            ],
          ),
          const SizedBox(
            width: 5,
          ),
          const CircleAvatar(
            backgroundColor: ash_eef,
            child: Icon(
              Icons.more_vert,
              color: black97,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ProfilePage();
              }));
            },
            child: Image.asset(
              "assets/images/Ellipse 20.png",
              height: 45,
            ),
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
        bottom:
            const PreferredSize(preferredSize: Size(0, 0), child: Divider()),
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DemoVideoPlay(),
              const PurchaseNow(),
              //////
              const InitialCreationCategories(),
              //////
              const QrCategories()
            ],
          ),
        ),
      ),
    );
  }
}
