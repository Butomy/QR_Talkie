import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/screens/profile/chat_settings.dart';
import 'package:qr_talkie/presentation/screens/profile/personal_data.dart';
import 'package:qr_talkie/presentation/screens/profile/saved_address.dart';
import 'package:qr_talkie/utils/colors.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}


class _SettingPageState extends State<SettingPage> {
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
          'Settings',
          style: CustomFontStyle().common(
            color: black2c,
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        bottom: PreferredSize(
            preferredSize: Size(0, 0),
            child: Divider(
              height: 0,
            )),
      ),
      body: Padding(
        padding:EdgeInsets.all(16),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // ListView.separated(
                //   shrinkWrap: true,
                //   physics: const NeverScrollableScrollPhysics(),
                //   itemBuilder: (context, index) {
                //     return Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //       children: [
                //         Container(
                //             padding: EdgeInsets.all(8),
                //             width: 40.w,
                //             height: 40.h,
                //             decoration: ShapeDecoration(
                //               color: const Color(0xFFF0EFEF),
                //               shape: RoundedRectangleBorder(
                //                   borderRadius: BorderRadius.circular(8)),
                //             ),
                //             // child: Image(image: images[index])
                //              child: Icon(Icons.abc_outlined,color: const Color(0xFF2C2C2C),),
                //             ),
                //         const SizedBox(
                //           width: 16,
                //         ),
                //         Expanded(
                //           child: Text(
                //             items[index],
                //             style: CustomFontStyle().common(
                //               color: const Color(0xFF2C2C2C),
                //               fontSize: 16.sp,
                //               fontWeight: FontWeight.w400,
                //             ),
                //           ),
                //         ),
                //         const Icon(
                //           Icons.chevron_right_outlined,
                //           color: Color(0xFF8C8C8C),
                //         )
                //       ],
                //     );
                //   },
                //   separatorBuilder: (BuildContext context, int index) {
                //     return Divider(
                //       color: Colors.black.withOpacity(0.07999999821186066),
                //       height: 25.h,
                //     );
                //   },
                //   itemCount: items.length,
                // ),
                InkWell(onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context){
                      return const PersonalData();
                     }));
                },
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        padding: EdgeInsets.all(5),
                        decoration: ShapeDecoration(
                          color:greyef,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        child: Image.asset("assets/images/user (2) 1.png"),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Expanded(
                        child: Text(
                          'Personal Data',
                          style: CustomFontStyle().common(
                            color: black2c,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
                Divider(),
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      padding: EdgeInsets.all(5),
                      decoration: ShapeDecoration(
                        color: greyef,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      child: Image.asset("assets/images/Policy.png"),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Expanded(
                      child: Text(
                        'Change Password',
                        style: CustomFontStyle().common(
                          color: black2c,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
                Divider(),
                InkWell(
                  onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder:(context){
                      return const ChatSettings();
                     }));
                  },
                  child: Row(
                    children: [
                      Container(
                        width: 40.w,
                        height: 40.h,
                        padding: EdgeInsets.all(5),
                        decoration: ShapeDecoration(
                          color: greyef,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        child: Image.asset(
                          "assets/images/settings.png",
                          color: black26,
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Expanded(
                        child: Text(
                          'Chat Settings',
                          style: CustomFontStyle().common(
                            color: black2c,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
                Divider(),
                InkWell(onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder:(context){
                      return const SavedAddress();
                     }));
                },
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        padding: EdgeInsets.all(5),
                        decoration: ShapeDecoration(
                          color: greyef,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        child: Image.asset(
                          "assets/images/Address.png",
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Expanded(
                        child: Text(
                          'Saved Address',
                          style: CustomFontStyle().common(
                            color: black2c,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
                Divider(),
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      padding: EdgeInsets.all(5),
                      decoration: ShapeDecoration(
                        color: greyef,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      child: Image.asset(
                        "assets/images/flag.png",
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Expanded(
                      child: Text(
                        'Report',
                        style: CustomFontStyle().common(
                          color: black2c,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      padding: EdgeInsets.all(5),
                      decoration: ShapeDecoration(
                        color: greyef,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      child: Image.asset(
                        "assets/images/label.png",
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Expanded(
                      child: Text(
                        'About',
                        style: CustomFontStyle().common(
                          color: black2c,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
                Divider(),

                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 4),
                  width: double.infinity,
                  height: 68.h,
                  decoration: ShapeDecoration(
                    color: lightblue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.headset_mic_outlined,
                        color: primaryColor,
                        size: 28,
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      Text(
                        'Feel Free to Ask, We ready to Help',
                        style: CustomFontStyle().common(
                          color: primaryColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
