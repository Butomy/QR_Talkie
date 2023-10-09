import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:qr_talkie/presentation/screens/profile/order_history/order_history.dart';
import 'package:qr_talkie/presentation/screens/profile/settings_page.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';

import '../../../utils/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
   XFile? logo;
  final _picker = ImagePicker();
  Future<void> _openImagePicker(ImageSource source) async {
    final XFile? pickedImage = await _picker.pickImage(source: source);
    if (pickedImage != null) {
      setState(() {
        logo = pickedImage;
      });

      Navigator.pop(context);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: primaryColor,surfaceTintColor:primaryColor ,
    leading: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: InkWell(onTap: (){
              Navigator.pop(context);
            },
              child: Container(
                width: 42.w,
                height: 42.h,
                decoration: BoxDecoration(color: white,
                    shape: BoxShape.circle,
                    border: Border.all(width: 0.8, color: white)),
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: black2c,
                ),
              ),
            )), ),
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
           Container(
              height: 250.h,
              width: ScreenUtil().screenWidth,
              decoration: const BoxDecoration(color: primaryColor,
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/Group 359.png",
                      ),
                      fit: BoxFit.fitWidth)),
              child: Center(
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    
                    Stack(fit: StackFit.loose,clipBehavior: Clip.none,
                      children: [
                      CircleAvatar(
                        backgroundImage:
                            const AssetImage("assets/images/image 2.png"),
                        radius: 70.r,
                      ),
                      Positioned(
                        bottom: 8,
                        right: 8,
                        child: Container(
                          width: 28,
                          height: 28,
                          decoration: ShapeDecoration(
                            color: Colors.black.withOpacity(0.5),
                            shape: const OvalBorder(
                              side: BorderSide(
                                  width: 1, color:greyA5 ),
                            ),
                          ),
                          child:Icon(
                            Icons.camera_alt_outlined,
                            color:greyA5,size: 20.sp,
                          ),
                        ),
                      )
                    ]),
                    const SizedBox(
                      height: 12,
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
                        color: white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,

              decoration: const ShapeDecoration(
                color: white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
              ),
              child: Column(
                children: [
                  InkWell(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const OrderHistoryPage();
                      }));
                  },
                    child: ListTile(
                      title: Text(
                        'Order History',
                        style: TextStyle(
                          color: black2c,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      subtitle: Text(
                        'Track your order & See previous orders',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      leading: Container(
                        width: 40,
                        height: 40,
                        padding: EdgeInsets.all(6),
                        decoration: ShapeDecoration(
                          color: lightblue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        child: Image.asset("assets/images/clock.png"),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Divider(),
                    InkWell(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const SettingPage();
                      }));
                    },
                      child: ListTile(
                      title: Text(
                        'Settings',
                        style: TextStyle(
                          color: black2c,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      subtitle: Text(
                       'Personal Data, Change Password, Chat settings',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      leading: Container(
                        width: 40,
                        height: 40,
                        padding: EdgeInsets.all(6),
                        decoration: ShapeDecoration(
                          color: lightblue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        child: Image.asset("assets/images/settings.png"),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                                      ),
                    ),
                  Divider(),
                      ListTile(
                    title: Text(
                      'Rate Us',
                      style: TextStyle(
                        color: black2c,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    subtitle: Text(
                      'Feed back',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    leading: Container(
                      width: 40,
                      height: 40,
                      padding: EdgeInsets.all(6),
                      decoration: ShapeDecoration(
                        color: lightblue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      child:  Image.asset("assets/images/star.png"),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  Divider(),
                           ListTile(
                    title: Text(
                      'Log out',
                      style: TextStyle(
                        color: black2c,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    subtitle: Text(
                      'Log out your Account',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    leading: Container(
                      width: 40,
                      height: 40,
                      padding: EdgeInsets.all(6),
                      decoration: ShapeDecoration(
                        color: lightblue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      child: Image.asset("assets/images/logout.png"),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
              

                  //   ListView.separated(
                  //     physics: const NeverScrollableScrollPhysics(),
                  //     shrinkWrap: true,
                  //     itemCount: icons.length,
                  //     itemBuilder: (context, i) {
                  //       return Padding(
                  //         padding: const EdgeInsets.only(
                  //           left: 16,
                  //           right: 16,
                  //         ),
                  //         child: Row(
                  //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //           children: [
                  //             Container(
                  //               width: 40.w,
                  //               height: 40.h,
                  //               decoration: ShapeDecoration(
                  //                 color: const Color(0xFFDFF0FF),
                  //                 shape: RoundedRectangleBorder(
                  //                     borderRadius: BorderRadius.circular(8)),
                  //               ),
                  //               child: Icon(
                  //                 icons[i],
                  //                 color: const Color(0xFF006CEC),
                  //               ),
                  //             ),
                  //             const SizedBox(
                  //               width: 14,
                  //             ),
                  //             Expanded(
                  //               child: Column(
                  //                 crossAxisAlignment: CrossAxisAlignment.start,
                  //                 children: [
                  //                   Text(
                  //                     data1[i],
                  //                     style: CustomFontStyle().common(
                  //                       color: const Color(0xFF2C2C2C),
                  //                       fontSize: 16.sp,
                  //                       fontWeight: FontWeight.w400,
                  //                     ),
                  //                   ),
                  //                   Text(
                  //                     data2[i],
                  //                     style: CustomFontStyle().common(
                  //                       color: Colors.black.withOpacity(0.5),
                  //                       fontSize: 11.sp,
                  //                       fontWeight: FontWeight.w400,
                  //                     ),
                  //                   )
                  //                 ],
                  //               ),
                  //             ),
                  //             const Icon(
                  //               Icons.chevron_right_outlined,
                  //               color: Color(0xFF2C2C2C),
                  //             )
                  //           ],
                  //         ),
                  //       );
                  //     },
                  //     separatorBuilder: (BuildContext context, int index) {
                  //       return const Divider(
                  //         thickness: 0.50,
                  //         color: Color(0xFF2C2C2C),
                  //         height: 16,
                  //       );
                  //     },
                  //   )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
