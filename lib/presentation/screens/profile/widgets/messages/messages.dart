import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/colors.dart';
import '../../../../../utils/custom_font_style.dart';
class MessagesPage extends StatefulWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  State<MessagesPage> createState() => _MessagesPageState();
}
// ignore: non_constant_identifier_names
TextEditingController Search= TextEditingController();


class _MessagesPageState extends State<MessagesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: white,
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: const AssetImage("assets/images/home.png"),width: 23.w, height: 24.21.h),
            Image(image: const AssetImage("assets/images/Vector.png"),width: 26.w, height:26.h
            ),
            Image(image: const AssetImage("assets/images/QR.png"),
                width: 27.w, height: 27.h)
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
Padding(
  padding: const EdgeInsets.only(top: 30,left: 16,right: 16,bottom: 8),
  child:   Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,

    children: [

    Text(

          'Messages',

          style: CustomFontStyle().common(

            color: black2c,

            fontSize: 24.sp,

            fontWeight: FontWeight.w500,

          ),

    ),

    Container(
      width: 42.w,
      height: 42.h,
      decoration: ShapeDecoration(
        color: white,
        shape: const OvalBorder(),
        shadows: [
          BoxShadow(
            color: const Color(0x3F000000),
            blurRadius: 2.r,
            offset: const Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child:
      PopupMenuButton<int>(
        itemBuilder: (context) => [
          // // popupmenu item 1
          //  PopupMenuItem(
          //   value: 1,
          //   child: Text("Get The App",style: CustomFontStyle().common(color: white),),
          // ),
          // // popupmenu item 2
          // PopupMenuItem(
          //   value: 2,
          //   child: Text("Get The App",style: CustomFontStyle().common(color: white),),
          // ),
          // PopupMenuItem(
          //   value: 3,
          //   child: Text("Get The App",style: CustomFontStyle().common(color: white),),
          // ),
        ],
        offset: const Offset(0, 100),
        color:black2c,
        elevation: 2,
      ),
    ),
  ],),
),
            Padding(
              padding: const EdgeInsets.only(left: 16,right: 16),
              child: TextFormField(
                onTap: (){},
                style: CustomFontStyle().common(
                    color: const Color(0xFF242424),
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp),
                maxLength: 1,
                maxLines: 1,
                controller: Search,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                cursorColor: primaryColor,
                decoration: InputDecoration(
                    counter: const SizedBox.shrink(),
                    fillColor: const Color(0xFFF0EFEF),
                    filled: true,
                    contentPadding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                    hintText:"Search",
hintStyle: CustomFontStyle().common(
  color: grey43,
  fontSize: 17.sp,
),prefixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.search,color: Color(0xFF8E8E93),)),
focusColor: const Color(0x1E767680),
                   suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.mic,color: Color(0xFF8E8E93),)),

                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color:Colors.transparent)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.redAccent)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.transparent)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.transparent))),
              ),
            ),
            const Divider(height: 12,thickness: 0.50,),
            ListView.separated(shrinkWrap: true,physics: const NeverScrollableScrollPhysics(),itemCount:5,
                itemBuilder: (context,index){
              return InkWell(onTap: (){

              },
                child: Padding(
                  padding: const EdgeInsets.only(left: 16,right: 16,),
                  child: Row(
                    children: [
                    CircleAvatar(radius: 30.r,

                      child: Text(
                     "T",
                      textAlign: TextAlign.center,
                      style: CustomFontStyle().common(
                        color:black2c,
                        fontSize: 23.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),),
                      SizedBox(width: 12.w,),
                     Expanded(
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text(
                            "Tony Danza",
                            style: TextStyle(
                              color: black2c,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Hey',
                            textAlign: TextAlign.center,
                            style: CustomFontStyle().common(
                              color: black2c,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),

                        ],),
                      ),
                      Expanded(
                        child: Column(crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '9:56 AM',
                              style: CustomFontStyle().common(
                                color: black2c,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          CircleAvatar(
                            radius: 9.r,backgroundColor: primaryColor,
                            child: Text(
                            '1',
                            textAlign: TextAlign.center,
                            style:CustomFontStyle().common(
                              color: white,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),)
                        ],),
                      )


                  ],),
                ),
              );
            }, separatorBuilder: (BuildContext context, int index) {return const Divider(indent: 88,thickness: 0.50,); },)



          ],),
        ),
      ),
    );
  }
}
