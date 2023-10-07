import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/screens/bottom_navigation/bottom_navigation.dart';
import 'package:qr_talkie/presentation/screens/purchase_link_qr/assetspage.dart';
import 'package:qr_talkie/presentation/widgets/custom_button.dart';
import 'package:qr_talkie/presentation/widgets/custom_textfield.dart';
import 'package:qr_talkie/utils/colors.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';

class Categorypage extends StatefulWidget {
  const Categorypage({super.key});

  @override
  State<Categorypage> createState() => _CategorypageState();
}

class _CategorypageState extends State<Categorypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        toolbarHeight: 90.h,
        leading: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: InkWell(onTap: (){
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
          'Categories',
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select from your categories',
              style: CustomFontStyle().common(
                color: black2c,
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            InkWell(onTap: () {
              Navigator.push(context,MaterialPageRoute(builder:(context){
                return const Assetspage();
              }));
            },
              child: Container(
                height: 75.h,
                margin: EdgeInsets.only(top: 15,bottom: 15),
                padding: const EdgeInsets.only(left: 10, right: 10),
                decoration: ShapeDecoration(
                  color: Color(0xFFDADDEB),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Vehicle',
                      style: CustomFontStyle().common(
                        color: black2c,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Image.asset("assets/images/car-01.png")
                  ],
                ),
              ),
            ),
             Container(
              height: 75.h,
              padding: const EdgeInsets.only(left: 10, right: 10),
              decoration: ShapeDecoration(
                color: Color(0xFFDAEBDB),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'House',
                    style: CustomFontStyle().common(
                      color: black2c,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Image.asset("assets/images/Group (2).png",height: 40,),
                ],
              ),
            ),
             
              Spacer(),
                   CustomButton(
                     text:'Add New Category',
                     bgColor: lightblue,
                     onPress: () {
                      
                     },
                     textColor: blue6ec,
                   ),
         
          ],
        ),
      ),
    );
  }
}
