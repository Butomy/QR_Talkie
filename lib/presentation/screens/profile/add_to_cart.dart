import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/widgets/custom_button.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';

import '../../../../utils/colors.dart';
class AddCart extends StatefulWidget {
  const AddCart({Key? key}) : super(key: key);

  @override
  State<AddCart> createState() => _AddCartState();
}
List<ImageProvider> images=[
  const AssetImage("assets/images/Rectangle 163.png"),
  const AssetImage("assets/images/Rectangle 164.png"),
  const AssetImage("assets/images/Rectangle 165.png"),
  const AssetImage("assets/images/Rectangle 166.png"),
  const AssetImage("assets/images/Rectangle 163.png"),
  const AssetImage("assets/images/Rectangle 164.png"),
  const AssetImage("assets/images/Rectangle 165.png"),
  const AssetImage("assets/images/Rectangle 166.png"),
  const AssetImage("assets/images/Rectangle 163.png"),
  const AssetImage("assets/images/Rectangle 164.png"),
  const AssetImage("assets/images/Rectangle 165.png"),
  const AssetImage("assets/images/Rectangle 166.png"),


];
class _AddCartState extends State<AddCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black.withOpacity(0.5),
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 40,leading: const Icon(Icons.arrow_back,color: white,),
        backgroundColor: black.withOpacity(0.5),
        centerTitle: true,title: const Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage("assets/images/Group 331.png"),

            width: 30.08,
            height: 29.29,),
        
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'QR ',
                style: TextStyle(
                  color: Color(0xFF006CEC),
                  fontSize: 16.87,
                  fontWeight: FontWeight.w700,
                ),
              ),

              TextSpan(
                text: 'Talkie ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.87,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        )
      ],),

      ),
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
      body: SingleChildScrollView(
        child: Container(padding: EdgeInsets.symmetric(vertical: 10),
          width: double.infinity,
          decoration: const ShapeDecoration(
            color:white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
          ),
          child:
          Column(children: [

               Container(margin: const EdgeInsets.only(left: 16,bottom:24,right: 16,top: 18),
               padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 7),
               width: double.infinity,
               height: 36,

                 decoration: ShapeDecoration(
                   color: const Color(0x1E767680),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10),
                   ),
                 ),
                 child: Row(
                   children: [
                     const Icon(Icons.search,color: Color(0x993C3C43),size: 15.63,),
                     Text(
                       'Search',
                       style:  CustomFontStyle().common(
                         color: const Color(0x993C3C43),
                         fontSize: 17.sp,
                         fontWeight: FontWeight.w400,
                       ),
                     )
                 ],),
               ),

               GridView.count(
                 childAspectRatio: 0.55,
                 physics:const ScrollPhysics(),scrollDirection: Axis.vertical,
                 crossAxisCount: 2,
                 shrinkWrap: true,
                 children: List.generate(12, (index) {
                   return Column(crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Container(margin: const EdgeInsets.only(bottom: 10,),
                         width: MediaQuery.of(context).size.width/1,
                         height: 220.h,

                         decoration: BoxDecoration(
                           color: white,
                           image: DecorationImage(
                             image: images[index],
                             fit: BoxFit.cover,
                           ),

                         ),
                       ),

                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 12),
                         child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text(
                               'QR card by Qr talki',
                               style: CustomFontStyle().common(
                                 color: const Color(0xFF2C2C2C),
                                 fontSize: 15.sp,
                                 fontWeight: FontWeight.w500,
                               ),
                             ),

                             Text(
                               'Regular',
                               style:  CustomFontStyle().common(
                                 color: Colors.black.withOpacity(0.5),
                                 fontSize: 14.sp,
                                 fontWeight: FontWeight.w500,
                               ),
                             ),
                             Text.rich(
                               TextSpan(
                                 children: [
                                   TextSpan(
                                     text: 'AED ',
                                     style:  CustomFontStyle().common(
                                       color: const Color(0xFF2C2C2C),
                                       fontSize: 14.sp,
                                       fontWeight: FontWeight.w500,
                                     ),
                                   ),

                                   TextSpan(
                                     text: '150.00 ',
                                     style:  CustomFontStyle().common(
                                       color: Colors.black.withOpacity(0.5),
                                       fontSize: 12.sp,
                                       fontWeight: FontWeight.w500,
                                     ),
                                   ),

                                   TextSpan(
                                     text: '120.00 ',
                                     style:  CustomFontStyle().common(
                                       color: const Color(0xFF2C2C2C),
                                       fontSize: 14.sp,
                                       fontWeight: FontWeight.w500,
                                     ),
                                   ),
                                   TextSpan(text: '26% OFF',
                                     style: CustomFontStyle().common(
                                       color: const Color(0xFF006CEC),
                                       fontSize: 12.sp,
                                       fontWeight: FontWeight.w500,
                                     ),

                                   ),
                                 ],
                               ),
                             ),

                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.symmetric(vertical: 13,horizontal: 7),
                         child: CustomButton(
                           text:" Add to cart",textStyle: CustomFontStyle().common(
                           color: Colors.white,
                           fontSize: 14.sp,
                           fontWeight: FontWeight.w500,
                         ),
                           bgColor: const Color(0xFF006CEC),onPress: (){},
                         ),
                       )
                     ],
                   );
                 },),
               ),


           ],),

        ),
      ),
        floatingActionButton:Container(
          width: MediaQuery.of(context).size.width/1.1,
          height: 70.h,
          padding: EdgeInsets.symmetric(horizontal: 16,vertical: 12),
          decoration: ShapeDecoration(
            color: Color(0xFF006CEC),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '2 item | AED 240',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Delivery Charge may apply',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],

              ),Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Row(
                  children: [
                  Text(
                    'View Cart ',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios_outlined,color: white,)
                ],)

              ],)
            ],
          ),
        ) ,
    );
  }
}
