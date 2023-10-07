import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/utils/colors.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

List<String> items = [
  "Personal Data",
  "Change Password",
  "Chat Settings",
  "Saved Address",
  "Report",
  "About"
];
// List<IconData> icons=[
// Icons.person,
//   Icons.policy_outlined,
//   Icons.settings,
//   Icons.share_location_outlined,
//   Icons.flag_outlined,
//   Icons.info_outline
//
// ];
List<AssetImage> images = [
  const AssetImage(
    "assets/images/Frame (2).png",
  ),
  const AssetImage(
    "assets/images/user (2) 1.png",
  ),
  const AssetImage(
    "assets/images/Policy.png",
  ),
  const AssetImage(
    "assets/images/Frame (2).png",
  ),
  const AssetImage(
    "assets/images/Address.png",
  ),
  const AssetImage(
    "assets/images/Frame (3).png",
  ),
  const AssetImage(
    "assets/images/Frame (4).png",
  ),
];

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
              child: const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 21,
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Color(0xFF2C2C2C),
                ),
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
            child: Column(
              children: [
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Row(
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
                            child: Image(image: images[index])
                            // child: Icon(icons[index],color: const Color(0xFF2C2C2C),),
                            ),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Text(
                            items[index],
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
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider(
                      color: Colors.black.withOpacity(0.07999999821186066),
                      height: 25.h,
                    );
                  },
                  itemCount: items.length,
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
