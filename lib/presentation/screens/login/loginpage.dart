
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/screens/sign_up/signup_page.dart';
import 'package:qr_talkie/presentation/widgets/custom_button.dart';
import 'package:qr_talkie/utils/colors.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';
import '../../widgets/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                height: ScreenUtil().screenHeight * 0.3,
                padding: EdgeInsets.only(
                    top: ScreenUtil().statusBarHeight,
                    left: 16,
                    right: 16,
                    bottom: 16),
                width: double.infinity,
                color: bluuedec,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20.r,
                      child: Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: primaryColor,
                          size: 20.sp,
                        ),
                      ),
                    ),
                    Text(
                      'Welcome Back',
                      style: CustomFontStyle().common(
                        color: Colors.white,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text('Login Now to access your\nQR Talki Account',
                        style: CustomFontStyle().common(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: white))
                  ],
                ),
              ),

              Container(color: bluuedec,height: ScreenUtil().screenHeight/2,
                child: Container( decoration: const BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                  padding: EdgeInsets.only(left: 15,right: 15,top: 30,),
                
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextField(
                       hintText: "Phone number",
                       hintstyle: TextStyle(
                         fontSize: 14.sp,
                         fontWeight: FontWeight.w400,
                         color: grey,
                       ),
                     ),
                     CustomTextField(
                       hintText: "Password",
                       hintstyle: TextStyle(
                           fontSize: 14.sp,
                           fontWeight: FontWeight.w400,
                           color: grey),
                       isPasswordType: true,
                       maxLine: 1,
                       onTap: () {},
                     ),
                     Align(
                       alignment: Alignment.topRight,
                       child: Text(
                         'Forgot Password ?',
                         style: CustomFontStyle().common(
                           color: black2c,
                           fontSize: 13.sp,
                           fontWeight: FontWeight.w400,
                         ),
                       ),
                     ),
                                Padding(
                         padding: const EdgeInsets.only(top: 30,bottom: 30),
                         child: CustomButton(
                           text: "Login",
                           textColor: white,
                           bgColor: primaryColor,
                           onPress: () {
                            //  Navigator.push(context, MaterialPageRoute(builder:(context) {
                            //    return const SignUp();
                            //  },));
                           },
                         ),
                       ),
                    Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Opacity(
                           opacity: 0.50,
                           child: Container(
                             width: ScreenUtil().screenWidth/2.5,
                             decoration: const ShapeDecoration(
                               shape: RoundedRectangleBorder(
                                 side: BorderSide(
                                   width: 1,
                                   strokeAlign: BorderSide.strokeAlignCenter,
                                   color: black2c,
                                 ),
                               ),
                             ),
                           ),
                         ),
                          Text(
                           'OR',
                           style: CustomFontStyle().common(
                             color:black2c,
                             fontSize: 16.sp,
                             fontWeight: FontWeight.w400,
                           ),
                         ),
                         Opacity(
                           opacity: 0.50,
                           child: Container(
                             width: ScreenUtil().screenWidth/2.5,
                             decoration: const ShapeDecoration(
                               shape: RoundedRectangleBorder(
                                 side: BorderSide(
                                   width: 1,
                                   strokeAlign: BorderSide.strokeAlignCenter,
                                   color: black2c,
                                 ),
                               ),
                             ),
                           ),
                         ),
                       ],
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Container(
                           margin: const EdgeInsets.only(top: 30),
                           padding: EdgeInsets.all(15),
                           width:  ScreenUtil().screenWidth/2.3,
                           height: 54.h,
                           decoration: ShapeDecoration(
                             color: const Color(0xFFF0EFEF),
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(10),
                             ),
                           ),
                          child: Image.asset("assets/images/Google.png",),
                         ),
                         Container(
                           margin: const EdgeInsets.only(top: 33),
                           width: MediaQuery.of(context).size.width / 2.3,
                           height: 54.h,
                           decoration: ShapeDecoration(
                             color:ash_eef ,
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(10),
                             ),
                           ),
                            child: Image.asset('assets/images/icons8-apple-30.png'),
                         )
                       ],
                     ),
                          
                    ],
                  ),
                ),
              ),
              const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text.rich(
                       TextSpan(
                         children: [
                           TextSpan(
                             text: 'Don\'t have an account ? ',
                             style: CustomFontStyle().common(
                               color: black2c,
                               fontSize: 14.sp,
                               fontWeight: FontWeight.w400,
                             ),
                           ),
                           TextSpan(  recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return const SignUp();
                                    },
                                  ));
                                },
                             text: 'Sign Up',
                             style:CustomFontStyle().common(
                               color: blue6ec,
                               fontSize: 14.sp,
                               fontWeight: FontWeight.w500,
                             ),
                           ),
                         ],
                       ),
                     ),
                )
               ],
          ),
        ),
      ),
    );
  }
}
