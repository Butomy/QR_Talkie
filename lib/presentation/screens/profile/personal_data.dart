import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/screens/profile/settings_page.dart';
import 'package:qr_talkie/presentation/widgets/custom_button.dart';
import 'package:qr_talkie/presentation/widgets/custom_textfield.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';

import '../../../utils/colors.dart';

class PersonalData extends StatefulWidget {
  const PersonalData({Key? key}) : super(key: key);

  @override
  State<PersonalData> createState() => _PersonalDataState();
}

TextEditingController name = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController number = TextEditingController();
TextEditingController country = TextEditingController();

class _PersonalDataState extends State<PersonalData> {
    String? dropvalue;
  var items = [
    'United States',
    'Canada',
    'United Kingdom',
    'Australia',
    'Germany',
    'France',
    'Italy',
    'Spain',
   
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: black2c,
                ),
              ),
            )),
        centerTitle: true,
        title: Text(
          'Personal Data',
          style: CustomFontStyle().common(
            color: black2c,
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        bottom: const PreferredSize(
            preferredSize: Size(0, 0),
            child: Divider(
              height: 0,
            )),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 28.h, horizontal: 16.w),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Stack(fit: StackFit.loose,clipBehavior: Clip.none,
                    children: [
                    const CircleAvatar(
                     backgroundImage: AssetImage("assets/images/image 2.png"),
                      radius: 60,
                    ),
                    Positioned(
                      bottom: 4,
                      right: 5,
                      child: Container(
                        width: 28.w,
                        height: 28.h,
                        decoration: ShapeDecoration(
                          color: Colors.black.withOpacity(0.5),
                          shape: OvalBorder(
                            side: BorderSide(
                                width: 1.w, color:greyA5),
                          ),
                        ),
                        child: const Icon(
                          Icons.camera_alt_outlined,
                          color:greyA5,
                        ),
                      ),
                    )
                  ]),
                ),
                SizedBox(
                  height: 24.h,
                ),
          CustomTextField(
                        suffixIcon: const Icon(
                          Icons.check,
                          color: grey,
                        ),
                        hintText: "Name",
                        hintstyle: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: grey,
                        ),
                      ),
                      CustomTextField(
                        suffixIcon: const Icon(
                          Icons.check,
                          color: grey,
                        ),
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
                        suffixIcon: const Icon(
                          Icons.check,
                          color: grey,
                        ),
                        hintText: "Email",
                        hintstyle: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: grey,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        width: ScreenUtil().screenWidth,
                        height: 56.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xfff0efef)),
                        child: DropdownButton(
                          isExpanded: true,
                          hint: Text(
                            'Country',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: grey,
                            ),
                          ),
                          underline: const SizedBox(
                            height: 0,
                          ),
                          value: dropvalue,
                          icon: Icon(
                            Icons.arrow_drop_down_circle_outlined,
                            size: 20,
                            color: dropvalue == null ? grey : primaryColor,
                          ),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(
                                items,
                                style: CustomFontStyle().common(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: black,
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropvalue = newValue!;
                            });
                          },
                        ),
                      ),
                     
         ],
            ),
          ),
        ),
      ),
      bottomSheet: Container(color: white,padding: EdgeInsets.all(15.0),
        child: CustomButton(text: "Update Profile",textColor: white,bgColor: primaryColor,onPress: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return const SettingPage();
          }));
        },)),
    );
  }
}
