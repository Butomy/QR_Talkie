
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/screens/sign_up/unlock_profile_page.dart';
import 'package:qr_talkie/presentation/widgets/custom_button.dart';
import 'package:qr_talkie/presentation/widgets/custom_textfield.dart';
import 'package:qr_talkie/utils/colors.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';

class ProfileSetup extends StatefulWidget {
  const ProfileSetup({super.key});

  @override
  State<ProfileSetup> createState() => _ProfileSetupState();
}

class _ProfileSetupState extends State<ProfileSetup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: ScreenUtil().screenHeight * 0.35,
            padding: EdgeInsets.only(
              top: ScreenUtil().statusBarHeight,
              left: 16,
              right: 16,
            ),
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Frame 438.png"),
                    fit: BoxFit.fitWidth)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(onTap:(){ Navigator.pop(context);},
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20.r,
                    child: Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: primaryColor,
                        size: 20.sp,
                      ),
                    ),
                  ),
                ),
                Text(
                  'Set up your profile',
                  style: CustomFontStyle().common(
                    color: Colors.white,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                  ),
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
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                    CustomTextField(
                       hintText: "Name",
                       hintstyle: TextStyle(
                         fontSize: 14.sp,
                         fontWeight: FontWeight.w400,
                         color: grey,
                       ),
                     ),
                     CustomTextField(
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
                     hintText: "Email",
                     hintstyle: TextStyle(
                       fontSize: 14.sp,
                       fontWeight: FontWeight.w400,
                       color: grey,
                     ),
                   ),
                   CustomTextField(
                     hintText: "Country",
                     hintstyle: TextStyle(
                         fontSize: 14.sp,
                         fontWeight: FontWeight.w400,
                         color: grey),
                     isPasswordType: false,
                     maxLine: 1,
                     onTap: () {},
                   ),
                  
                    
          
              ],
            ),
          ),
         
        ],
      ),
      bottomSheet:  Container(color: white,
        child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CustomButton(
                    text: "Continue",
                    bgColor: primaryColor,
                    onPress: () {
                      Navigator.push(context,MaterialPageRoute(builder:(context) {
                        return Unlockpage();
                      },));
                    },
                    textColor: white,
                  )),
      ),
    );
  }
}
