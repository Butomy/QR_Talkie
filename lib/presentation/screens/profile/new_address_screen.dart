import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/widgets/custom_button.dart';
import 'package:qr_talkie/presentation/widgets/custom_textfield.dart';
import 'package:qr_talkie/utils/colors.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';

class NewaddressScreen extends StatefulWidget {
  const NewaddressScreen({super.key});

  @override
  State<NewaddressScreen> createState() => _NewaddressScreenState();
}

class _NewaddressScreenState extends State<NewaddressScreen> {
  List items = ["Home", "Work", "Type"];
  int? colorselect;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
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
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: blueca,
                ),
              ),
            )),
        centerTitle: true,
        title: Text(
          'Add Address',
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
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 8, bottom: 10, right: 8),
                  width: ScreenUtil().screenWidth / 2.3,
                  height: 50.h,
                  decoration: ShapeDecoration(
                    color: ash_eef,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Center(
                    child: Text(
                      'First Name',
                      style: TextStyle(
                        color: greyA7,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 8, bottom: 10),
                    width: ScreenUtil().screenWidth / 2.3,
                    height: 50.h,
                    decoration: ShapeDecoration(
                      color: ash_eef,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    child: Center(
                      child: Text(
                        'Last Name',
                        style: TextStyle(
                          color: greyA7,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )),
              ],
            ),
            const CustomTextField(
              hintText: "Email Address",
            ),
            const CustomTextField(
              hintText: "Mobile Number",
            ),
            const CustomTextField(hintText: "House No./Flat No./Floor"),
            const CustomTextField(
              hintText: "Locality/Street Name",
            ),
            const CustomTextField(
              hintText: "City",
            ),
            SizedBox(
              height: ScreenUtil().screenHeight / 20,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          colorselect = index;
                        });
                      },
                      child: Container(
                        height: 32,width: 85.w,
                        decoration: BoxDecoration(
                            color:
                                colorselect == index ? primaryColor : lightblue,
                            borderRadius: BorderRadius.circular(19.r),
                            border: Border.all(color: white)),
                        child: Center(
                          child: Text(
                            items[index],
                            style: CustomFontStyle().common(
                                color: colorselect == index ? white : blue6ec),
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                        width: 8.w,
                      ),
                  itemCount: items.length),
            )
          ],
        ),
      ),
      bottomSheet: Container(
        color: white,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: CustomButton(
            text: "Save and Upadte",
            textColor: white,
            bgColor: primaryColor,
            onPress: () {},
          ),
        ),
      ),
    );
  }
}
