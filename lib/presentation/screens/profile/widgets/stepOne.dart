// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:qr_talkie/utils/custom_font_style.dart';
// import 'package:stepper_a/stepper_a.dart';
//
// import '../../../../utils/colors.dart';
// import 'add_address.dart';
//
// class StepOne extends StatefulWidget {
//   final StepperAController controller;
//
//   const StepOne({required this.controller, Key? key}) : super(key: key);
//
//   @override
//   State<StepOne> createState() => _StepOneState();
// }
//
//
// class _StepOneState extends State<StepOne> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // Define the UI for Step One here
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 18),
//         child: Column(crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Choose Address',
//               style: CustomFontStyle().common(
//                 color: black2c,
//                 fontSize: 16.sp,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             Container(margin: EdgeInsets.only(top: 9.93),padding: EdgeInsets.only(top: 18.49,bottom: 17.6,left: 16.91,right: 20.3),
//               width: double.infinity,
//               // height: 205.53,
//               decoration: ShapeDecoration(
//                 color: lightblue,
//                 shape: RoundedRectangleBorder(
//                   side: BorderSide(width: 1, color: primaryColor),
//                   borderRadius: BorderRadius.circular(7.02.r),
//                 ),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         'Hannibal Smith',
//                         style: TextStyle(
//                           color: Colors.black.withOpacity(0.5600000023841858),
//                           fontSize: 13.62,
//                           fontFamily: 'Poppins',
//                           fontWeight: FontWeight.w500,
//                           height: 0,
//                           letterSpacing: -0.35,
//                         ),
//                       ),
//
//                     ],
//                   ),
//                   Text(
//                     'Lavilla Apartments, Flat No 35 ',
//                     style: CustomFontStyle().common(
//                       color: Colors.black.withOpacity(0.5600000023841858),
//                       fontSize: 13.62.sp,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   Text(
//                     'Dubai Downtown',
//                     style: CustomFontStyle().common(
//                       color: Colors.black.withOpacity(0.5600000023841858),
//                       fontSize: 13.62.sp,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   Text(
//                     'Dubai, UAE',
//                     style:CustomFontStyle().common(
//                       color: black.withOpacity(0.5600000023841858),
//                       fontSize: 13.62.sp,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   SizedBox(height: 15.41.h,),
//                   Text(
//                     'Mobile - 8756346512',
//                     style: CustomFontStyle().common(
//                       color:black.withOpacity(0.5600000023841858),
//                       fontSize: 13.62.sp,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   SizedBox(height: 21.11.h,),
//                   Row(
//                     children: [
// SvgPicture.asset("assets/svgs/Delete.svg"),
//                       Text(
//                         'Remove',
//                         style: CustomFontStyle().common(
//                           color: black2c,
//                           fontSize: 13.62.sp,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),SizedBox(width: 27.5.w,),
//                       SvgPicture.asset("assets/svgs/Edit.svg"),
//                       Text(
//                         ' Edit',
//                         style: CustomFontStyle().common(
//                           color:black2c,
//                           fontSize: 13.62.sp,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       )
//                   ],)
//               ],),
//             ),
//
//             Container(margin: const EdgeInsets.symmetric(vertical: 16.75),
//               width: double.infinity,
//               height: 49.14.h,
//               decoration: ShapeDecoration(
//                 color: const Color(0xFFDFF0FF),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(7.02),
//                 ),
//               ),
//               child: Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   InkWell(onTap: (){
//                     Navigator.push(context, MaterialPageRoute(builder: (context){
//                       return AddAddress();
//                     }));},
//                     child: Container(margin: const EdgeInsets.only(right: 5),
//                         width: 24.w,
//                         height: 24.h,
//                         decoration: ShapeDecoration(
//                           color: const Color(0x190086EC),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(69.33),
//                           ),
//                         ),
//                         child:const Icon(Icons.add,color: Color(0xFF006CEC),)
//
//                     ),
//                   ),
//                   Text(
//                     'Add New Address',
//                     style: CustomFontStyle().common(
//                       color: const Color(0xFF006CEC),
//                       fontSize: 14.04.sp,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//
//
//                 ],),
//             )
//             // Add your UI components for Step One here
//           ],
//         ),
//       ),
//     );
//   }
// }