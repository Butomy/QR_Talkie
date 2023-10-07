import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/screens/purchase_link_qr/asset_linked.dart';
import 'package:qr_talkie/presentation/widgets/custom_button.dart';
import 'package:qr_talkie/presentation/widgets/custom_textfield.dart';
import 'package:qr_talkie/utils/colors.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';

class Assetspage extends StatefulWidget {
  const Assetspage({super.key});

  @override
  State<Assetspage> createState() => _AssetspageState();
}

class _AssetspageState extends State<Assetspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90.h,
        leading: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: InkWell(onTap: () {
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
        title: Text(
          'Assets',
          style: CustomFontStyle().common(
            color: black2c,
            fontSize: 24.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        bottom: PreferredSize(preferredSize: Size(0, 0), child: Divider()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Asset Details',
            style: CustomFontStyle().common(
              color: black2c,
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          CustomTextField(),
          CustomTextField(
            suffixIcon: Icon(Icons.file_copy_rounded),
          ),
          Spacer(),
          CustomButton(
            text: 'Done',
            textColor: white,
            bgColor: primaryColor,
            onPress: () {
                  Navigator.push(context,MaterialPageRoute(builder:(context){
                return const Assetspagelinked();
              }));
            },
          ),
        ]),
      ),
    );
  }
}
