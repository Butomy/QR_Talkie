import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_talkie/presentation/screens/home_main_page/home_main.dart';
import 'package:qr_talkie/presentation/widgets/custom_button.dart';
import 'package:qr_talkie/utils/colors.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';

import 'ordertile.dart';
class PaymentSuccess extends StatefulWidget {
  const PaymentSuccess({Key? key}) : super(key: key);

  @override
  State<PaymentSuccess> createState() => _PaymentSuccessState();
}

class _PaymentSuccessState extends State<PaymentSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bluuedec,
body: Column
  (
  crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.end,
  children: [
SvgPicture.asset("assets/svgs/check 1.svg"),
    SizedBox(height: 12.h,),
    Text(
      'Payment successful',
      textAlign: TextAlign.center,
      style: CustomFontStyle().common(
        color: white,
        fontSize: 20.sp,
        fontWeight: FontWeight.w500,
      ),
    ),
    SizedBox(height: 5.22.h,),
    Text(
      'We will begin the order packaging soon!',
      textAlign: TextAlign.center,
      style: CustomFontStyle().common(
        color:white,
        fontSize: 13.79.sp,
        fontWeight: FontWeight.w500,
      ),
    ),
    SizedBox(height: 10.h,),
    Text(
      'You can track your order under\n“Your Orders”',
      textAlign: TextAlign.center,
      style:CustomFontStyle().common(
        color: white,
        fontSize: 13.79.sp,
        fontWeight: FontWeight.w500,
      ),
    ),
    const Padding(
      padding: EdgeInsets.only(top: 50,left: 18,right: 18,bottom: 80),
      child: OrderTile(),
    ),


],),
bottomNavigationBar: Padding(
  padding: const EdgeInsets.only(bottom: 40),
  child:   BottomAppBar(elevation: 0,color: bluuedec, child: CustomButton(text:  'Back To Home',onPress: (){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return
      const HomemainPage();
    }));
  },bgColor: white,textColor: bluuedec,textStyle: CustomFontStyle().common(

      fontSize: 14.04.sp,

      fontWeight: FontWeight.w500,color: bluuedec

  ),



  ),),
),

    );
  }
}
