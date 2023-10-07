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


class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(surfaceTintColor: white,
        toolbarHeight: 80.h,
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
                  color: blueca,
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
                            // child: Image(image: images[index])
                             child: Icon(Icons.abc_outlined,color: const Color(0xFF2C2C2C),),
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
