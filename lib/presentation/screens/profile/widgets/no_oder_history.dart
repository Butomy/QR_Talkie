import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/custom_font_style.dart';
class NoHistory extends StatefulWidget {
  const NoHistory({Key? key}) : super(key: key);

  @override
  State<NoHistory> createState() => _NoHistoryState();
}

class _NoHistoryState extends State<NoHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        centerTitle: true,
        title: Text(
          'Order History',
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
            preferredSize: Size.fromHeight(16.0.h),
            child:Divider(
              height: 0.h,
            )),
      ),
      backgroundColor: white,
      body: Padding(
        padding: const EdgeInsets.only(left: 40,right: 41),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Stack(children:[  Image(image: const AssetImage("assets/images/Group 12.png",),width: double.infinity,
              height: MediaQuery.of(context).size.height/4,),
            Positioned(bottom: 28,left:30,right: 30,
                child: Text(
              'No order or transaction found',
              textAlign: TextAlign.center,
              style:CustomFontStyle().common(
                color: const Color(0xFF2C2C2C),
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ))]
            ),


        ],),
      ),



    );
  }
}
