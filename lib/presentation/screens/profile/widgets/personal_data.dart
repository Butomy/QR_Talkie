import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';

import '../../../../utils/colors.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        centerTitle: true,
        title: Text(
          'Personal Data',
          textAlign: TextAlign.center,
          style: CustomFontStyle().common(
            color: const Color(0xFF2C2C2C),
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        leadingWidth: 140.w,
        leading: Row(
          children: [
            SizedBox(
              width: 16.w,
            ),
            Container(
              padding: const EdgeInsets.all(1.0),
              decoration: const BoxDecoration(
                color: Color(0Xffd6d6d6), // Border color
                shape: BoxShape.circle,
              ),
              child: const CircleAvatar(
                backgroundColor: white,
                radius: 21,
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Color(0xFF2C2C2C),
                ),
              ),
            ),
          ],
        ),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(16.0.h), child: const Divider()),
      ),
      backgroundColor: Colors.white,

      bottomSheet:BottomSheet(backgroundColor: white,elevation: 0,

        builder:  (BuildContext context) {
return
        Container(
          padding: const EdgeInsets.all(15),
          margin: EdgeInsets.only(bottom: 20.h,left: 16.w,right: 16.w),
          width: double.infinity,
          height: 56.h,
          decoration: ShapeDecoration(
            color: const Color(0xFF006CEC),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)),
          ),
          child: Text(
            'Update Profile',
            textAlign: TextAlign.center,
            style: CustomFontStyle().common(
              color: Colors.white,
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        );
      }, onClosing: () {  },)  ,

      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 28.h, horizontal: 16.w),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Stack(children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage("assets/images/image 2.jpg"),
                      radius: 50,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 28.w,
                        height: 28.h,
                        decoration: ShapeDecoration(
                          color: Colors.black.withOpacity(0.5),
                          shape: OvalBorder(
                            side: BorderSide(
                                width: 1.w, color: const Color(0xFFA5A5A5)),
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
                SizedBox(
                  height: 24.h,
                ),
                TextFormField(
                  controller: name,
                  onChanged: (value) {
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    suffixIcon: name.text.isNotEmpty
                        ? const Icon(
                            Icons.check,
                            color: Color(0xFF0086EC),
                          )
                        : null,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    filled: true,
                    focusColor: const Color(0xFFF0EFEF),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    labelText: "Name",
                    labelStyle: CustomFontStyle().common(
                      color: const Color(0xFFA8A7A7),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                TextFormField(
                  controller: number,
                  onChanged: (value) {
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    suffixIcon: number.text.isNotEmpty
                        ? const Icon(
                            Icons.check,
                            color: Color(0xFF0086EC),
                          )
                        : null,
                    filled: true,
                    focusColor: const Color(0xFFF0EFEF),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelText: "Number",
                    labelStyle: CustomFontStyle().common(
                      color: const Color(0xFFA8A7A7),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                TextFormField(
                  controller: email,
                  onChanged: (value) {
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    suffixIcon: email.text.isNotEmpty
                        ? const Icon(
                            Icons.check,
                            color: Color(0xFF0086EC),
                          )
                        : null,
                    filled: true,
                    focusColor: const Color(0xFFF0EFEF),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelText: "Email",
                    labelStyle: TextStyle(
                      color: const Color(0xFFA8A7A7),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                TextFormField(
                  controller: country,
                  decoration: InputDecoration(
                    suffixIcon: Image(
                      image: const AssetImage(
                        "assets/images/Drop down icon.png",
                      ),
                      height: 24.h,
                      width: 24.w,
                    ),
                    filled: true,
                    focusColor: const Color(0xFFF0EFEF),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelText: "Country",
                    labelStyle: CustomFontStyle().common(
                      color: const Color(0xFFA8A7A7),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
