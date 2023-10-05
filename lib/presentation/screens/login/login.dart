import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/widgets/custom_textfield.dart';
import 'package:qr_talkie/utils/colors.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

TextEditingController phone = TextEditingController();
TextEditingController password = TextEditingController();
bool visibilityTag = false;

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, top: 25, right: 15, bottom: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
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
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Login Now to access your\nQR Talki Account',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                // height: MediaQuery.of(context).size.height,
                // width: double.infinity,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 27),
                  child: Column(
                    children: [
                      // TextFormField(
                      //   controller: phone,
                      //   decoration: const InputDecoration(
                      //     filled: true,
                      //     focusColor: Color(0xFFF0EFEF),
                      //     focusedBorder: OutlineInputBorder(
                      //       borderSide: BorderSide(color: Colors.transparent),
                      //       borderRadius: BorderRadius.all(Radius.circular(8)),
                      //     ),
                      //     enabledBorder: OutlineInputBorder(
                      //       borderSide: BorderSide(color: Colors.transparent),
                      //       borderRadius: BorderRadius.all(Radius.circular(8)),
                      //     ),
                      //     border: OutlineInputBorder(
                      //       borderSide: BorderSide(color: Colors.transparent),
                      //       borderRadius: BorderRadius.all(Radius.circular(8)),
                      //     ),
                      //     labelText: "Phone number",
                      //     labelStyle: TextStyle(
                      //       color: Color(0xFFA8A7A7),
                      //       fontSize: 14,
                      //       fontWeight: FontWeight.w400,
                      //     ),
                      //   ),
                      // ),
                      // const SizedBox(
                      //   height: 16,
                      // ),
                      // TextFormField(
                      //   controller: password,
                      //   decoration: const InputDecoration(
                      //     suffixIcon: Icon(
                      //       Icons.visibility_rounded,
                      //       color: Color(0xffd6d6d6),
                      //     ),
                      //     filled: true,
                      //     focusColor: Color(0xFFF0EFEF),
                      //     focusedBorder: OutlineInputBorder(
                      //       borderSide: BorderSide(color: Colors.transparent),
                      //       borderRadius: BorderRadius.all(Radius.circular(8)),
                      //     ),
                      //     enabledBorder: OutlineInputBorder(
                      //       borderSide: BorderSide(color: Colors.transparent),
                      //       borderRadius: BorderRadius.all(Radius.circular(8)),
                      //     ),
                      //     border: OutlineInputBorder(
                      //       borderSide: BorderSide(color: Colors.transparent),
                      //       borderRadius: BorderRadius.all(Radius.circular(8)),
                      //     ),
                      //     labelText: "Password",
                      //     labelStyle: TextStyle(
                      //       color: Color(0xFFA8A7A7),
                      //       fontSize: 14,
                      //       fontWeight: FontWeight.w400,
                      //     ),
                      //   ),
                      // ),
                      // const SizedBox(
                      //   height: 9,
                      // ),

                      CustomTextField(
                        hintText: "Phone number",
                      ),
                      CustomTextField(
                        hintText: "Password",
                        //  isPasswordType: true,
                        onTap: () {},
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'Forgot Password ?',
                          style: TextStyle(
                            color: const Color(0xFF2C2C2C).withOpacity(0.50),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 25, bottom: 28),
                        width: double.infinity,
                        height: 56,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            )),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Opacity(
                            opacity: 0.50,
                            child: Container(
                              width: MediaQuery.of(context).size.width / 2.5,
                              decoration: const ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFF2C2C2C),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Text(
                            'OR',
                            style: TextStyle(
                              color: Color(0xFF2C2C2C),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Opacity(
                            opacity: 0.50,
                            child: Container(
                              width: MediaQuery.of(context).size.width / 2.5,
                              decoration: const ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFF2C2C2C),
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
                            margin: const EdgeInsets.only(top: 33),
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: 54,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFF0EFEF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            // child: Image.asset("assets/images/Google.jpg"),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 33),
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: 54,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFF0EFEF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            //   child: Image.asset("assets/images/apple.jpg"),
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 4,
                      ),
                      const Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Don\'t have an account ? ',
                              style: TextStyle(
                                color: Color(0xFF2C2C2C),
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: 'Sign Up',
                              style: TextStyle(
                                color: Color(0xFF0086EC),
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      )
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
