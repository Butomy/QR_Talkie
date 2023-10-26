import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/widgets/custom_button.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/validation_util.dart';
import '../../../widgets/appbar_custom.dart';
import '../../../widgets/custom_textfield.dart';

class PersonalData extends StatefulWidget {
  const PersonalData({Key? key}) : super(key: key);

  @override
  State<PersonalData> createState() => _PersonalDataState();
}

TextEditingController name = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController number = TextEditingController();
TextEditingController country = TextEditingController();
String? dropvalue;
var items = [
  'United States',
  'Canada',
  'United Kingdom',
  'Australia',
  'Germany',
  'France',
  'Italy',
  'Spain',
  'Japan',
  'China',
  'India',
  'Brazil',
  'Mexico',
  'Argentina',
  'Russia',
  'South Africa',
  'Egypt',
  'Kenya',
  'Nigeria',
  // Add more country names as needed
];

class _PersonalDataState extends State<PersonalData> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize:
              Size(AppBar().preferredSize.width, AppBar().preferredSize.height),
          child: AppBarCustom(
            leadingIconColor: black2c,
            title: "Personal Data",
            titleStyle: CustomFontStyle().common(
              color: const Color(0xFF2B2B2B),
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
          child: CustomButton(
            minSize: const Size(double.infinity, 56),
            text: 'Update Profile',
            onPress: () {
              if (_formKey.currentState!.validate()) {
                print('succes');
              }
            },
            textStyle: CustomFontStyle().common(
              color: Colors.white,
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 28.h, horizontal: 16.w),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Stack(children: [
                      const CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/image 2.jpg"),
                        radius: 50,
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 28.w,
                          height: 28.h,
                          decoration: ShapeDecoration(
                            color: Colors.black.withOpacity(0.5),
                            shape: OvalBorder(
                              side: BorderSide(
                                  width: 1.w, color: const Color(0xFFA5A5A5)),
                            ),
                          ),
                          child: const Icon(
                            Icons.camera_alt_outlined,
                            color: Color(0xFFA5A5A5),
                          ),
                        ),
                      )
                    ]),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  CustomTextField(
                    controller: name,
                    hintText: "Name",
                  ),
                  CustomTextField(
                    controller: number,
                    hintText: "Number",
                    keyboardType: TextInputType.number,
                  ),
                  CustomTextField(
                    validator: (val) =>
                        ValidationUtil(context).emailValidation(val),
                    controller: email,
                    hintText: "Email",
                  ),
                  DropdownButtonFormField(
                    isExpanded: true,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    // validator: validator,
                    dropdownColor: Colors.white,
                    style: CustomFontStyle().common(
                        color: const Color(0xFF242424),
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp),
                    decoration: InputDecoration(
                        counter: const SizedBox.shrink(),
                        fillColor: const Color(0xFFF0EFEF),
                        filled: true,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 15),
                        constraints: BoxConstraints(maxHeight: 65.h),
                        suffixIconConstraints: BoxConstraints(maxHeight: 65.h),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: primaryColor)),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                const BorderSide(color: Colors.redAccent)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                const BorderSide(color: Color(0xFFF0EFEF))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                const BorderSide(color: Color(0xFFF0EFEF)))),
                    // decoration: const InputDecoration.collapsed(
                    //   hintText: '',
                    // ),

                    hint: Text(
                      "select",
                      style: CustomFontStyle().common(
                          color: const Color(0xFF242424),
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp),
                    ),
                    value: dropvalue,
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      size: 24.sp,
                      color: black,
                    ),
                    items: items.map((items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(
                          items,
                          style: CustomFontStyle().common(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w300,
                            color: black2c,
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? item) {
                      setState(() {
                        dropvalue = item;
                      });
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
