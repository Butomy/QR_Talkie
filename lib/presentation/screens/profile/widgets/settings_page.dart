import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/screens/profile/widgets/chat_settings.dart';
import 'package:qr_talkie/presentation/screens/profile/widgets/personal_data.dart';
import 'package:qr_talkie/presentation/screens/profile/widgets/saved_address.dart';
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
        elevation: 0,
        backgroundColor: white,
        centerTitle: true,
        title: Text(
          'Settings',
          style: CustomFontStyle().common(
            color: const Color(0xFF2C2C2C),
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        leadingWidth: 140,
        leading: Row(
          children: [
            const SizedBox(
              width: 16,
            ),
            Container(
              padding: const EdgeInsets.all(1.0),
              decoration: const BoxDecoration(
                color: Color(0Xffd6d6d6), // Border color
                shape: BoxShape.circle,
              ),
              child:  CircleAvatar(
                backgroundColor: Colors.white,
                radius: 21,
                child: IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Color(0xFF2C2C2C),
                ),)
              ),
            ),
          ],
        ),
        bottom: const PreferredSize(
            preferredSize: Size.fromHeight(16.0), child: Divider()),
      ),
      backgroundColor: white,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return  PersonalData();
                }));
              },
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      padding: EdgeInsets.all(8),
                      width: 40.w,
                      height: 40.h,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFF0EFEF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      child:
                      const Image(image:  AssetImage(
                        "assets/images/user (2) 1.png",
                      ),)
                    // child: Icon(icons[index],color: const Color(0xFF2C2C2C),),
                  ),
                SizedBox(
                    width: 16.w,
                  ),
                  Expanded(
                    child: Text(
                      "Personal Data",
                      style: CustomFontStyle().common(
                        color: const Color(0xFF2C2C2C),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.chevron_right_outlined,
                    color: Color(0xFF8C8C8C),
                  )
                ],
            ),
              ), Divider(
                  color: Colors.black.withOpacity(0.07999999821186066),
                  height: 25.h,
                ),
                InkWell(onTap: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context){
                  //   return  PersonalData();
                  // }));
                },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          padding: EdgeInsets.all(8),
                          width: 40.w,
                          height: 40.h,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFF0EFEF),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          child: const Image(image:  AssetImage(
                            "assets/images/Policy.png",
                          ),)
                        // child: Icon(icons[index],color: const Color(0xFF2C2C2C),),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Expanded(
                        child: Text(
                          "Change Password",
                          style: CustomFontStyle().common(
                            color: const Color(0xFF2C2C2C),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.chevron_right_outlined,
                        color: Color(0xFF8C8C8C),
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black.withOpacity(0.07999999821186066),
                  height: 25.h,
                ),
                InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return  ChatSettings();
                  }));
                },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          padding: EdgeInsets.all(8),
                          width: 40.w,
                          height: 40.h,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFF0EFEF),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          child: const Image(image:   AssetImage(
                            "assets/images/Frame.png",
                          ),)
                        // child: Icon(icons[index],color: const Color(0xFF2C2C2C),),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Expanded(
                        child: Text(
                          "Chat Settings",
                          style: CustomFontStyle().common(
                            color: const Color(0xFF2C2C2C),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.chevron_right_outlined,
                        color: Color(0xFF8C8C8C),
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black.withOpacity(0.07999999821186066),
                  height: 25.h,
                ),
                InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return  SavedAddress();
                  }));
                },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          padding: EdgeInsets.all(8),
                          width: 40.w,
                          height: 40.h,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFF0EFEF),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          child: const Image(image: AssetImage(
                            "assets/images/Address.png",
                          ),)
                        // child: Icon(icons[index],color: const Color(0xFF2C2C2C),),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Expanded(
                        child: Text(
                          "Saved Address",
                          style: CustomFontStyle().common(
                            color: const Color(0xFF2C2C2C),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.chevron_right_outlined,
                        color: Color(0xFF8C8C8C),
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black.withOpacity(0.07999999821186066),
                  height: 25.h,
                ),
                InkWell(onTap: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context){
                  //   return  PersonalData();
                  // }));
                },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          padding: EdgeInsets.all(8),
                          width: 40.w,
                          height: 40.h,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFF0EFEF),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          child: const Image(image:  AssetImage(
                            "assets/images/Frame (3).png",
                          ),)
                        // child: Icon(icons[index],color: const Color(0xFF2C2C2C),),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Expanded(
                        child: Text(
                          "Report",
                          style: CustomFontStyle().common(
                            color: const Color(0xFF2C2C2C),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.chevron_right_outlined,
                        color: Color(0xFF8C8C8C),
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black.withOpacity(0.07999999821186066),
                  height: 25.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        padding: EdgeInsets.all(8),
                        width: 40.w,
                        height: 40.h,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFF0EFEF),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        child: const Image(image:  AssetImage(
                          "assets/images/Frame (4).png",
                        ),)
                      // child: Icon(icons[index],color: const Color(0xFF2C2C2C),),
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    Expanded(
                      child: Text(
                          "About",
                        style: CustomFontStyle().common(
                          color: const Color(0xFF2C2C2C),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.chevron_right_outlined,
                      color: Color(0xFF8C8C8C),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 4),
                  width: double.infinity,
                  height: 68.h,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFDFF0FF),
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
                        color: Color(0xFF006CEC),
                        size: 28,
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      Text(
                        'Feel Free to Ask, We ready to Help',
                        style: CustomFontStyle().common(
                          color: const Color(0xFF006CEC),
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
