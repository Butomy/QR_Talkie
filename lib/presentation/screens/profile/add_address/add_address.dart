import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/widgets/custom_button.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/custom_font_style.dart';
import '../../../widgets/appbar_custom.dart';
import '../../../widgets/custom_textfield.dart';

class AddAddress extends StatefulWidget {
  const AddAddress({Key? key}) : super(key: key);

  @override
  State<AddAddress> createState() => _AddAddressState();
}

bool isSelected = false;
bool Selected = false;
bool isSelect = false;
TextEditingController name = TextEditingController();
TextEditingController lastname = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController number = TextEditingController();
TextEditingController houseno = TextEditingController();
TextEditingController locality = TextEditingController();
TextEditingController city = TextEditingController();

class _AddAddressState extends State<AddAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: PreferredSize(
        preferredSize:
            Size(AppBar().preferredSize.width, AppBar().preferredSize.height),
        child: AppBarCustom(
          leadingIconColor: black2c,
          title: "Add Address",
          titleStyle: CustomFontStyle().common(
            color: const Color(0xFF2B2B2B),
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 17.33, vertical: 19.92),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                        child: CustomTextField(
                      controller: name,
                      hintText: "First Name",
                    )),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                        child: CustomTextField(
                      controller: lastname,
                      hintText: "Last Name",
                    )),
                  ],
                ),
                CustomTextField(
                  controller: email,
                  hintText: "Email Address",
                ),
                CustomTextField(
                  controller: number,
                  hintText: "Mobile Number",
                ),
                CustomTextField(
                  controller: houseno,
                  hintText: "House No. / Flat No. / Floor",
                ),
                CustomTextField(
                  controller: locality,
                  hintText: "Locality / Street Name",
                ),
                CustomTextField(
                  controller: city,
                  hintText: "City",
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 32.15.h,
                      width: MediaQuery.of(context).size.width / 4.5,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isSelect = !isSelect;
                            isSelected = false;
                            Selected = false;
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              isSelect ? primaryColor : lightblue),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        child: Text(
                          'Home',
                          style: CustomFontStyle().common(
                            color: isSelect ? white : primaryColor,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 9.39.w,
                    ),
                    SizedBox(
                      height: 32.15.h,
                      width: MediaQuery.of(context).size.width / 4.5,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isSelected = !isSelected;
                            isSelect = false;
                            Selected = false;
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              isSelected ? primaryColor : lightblue),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        child: Text(
                          'Work',
                          style: CustomFontStyle().common(
                            color: isSelected ? white : primaryColor,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 9.39.w,
                    ),
                    SizedBox(
                      height: 32.15.h,
                      width: MediaQuery.of(context).size.width / 4.5,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            Selected = !Selected;
                            isSelect = false;
                            isSelected = false;
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Selected ? primaryColor : lightblue),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        child: Text(
                          'Other',
                          style: CustomFontStyle().common(
                            color: Selected ? white : primaryColor,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: white,
        elevation: 0,
        child: CustomButton(
          onPress: () {},
          text: 'Save and Update',
          bgColor: primaryColor,
          textColor: white,
          textStyle: CustomFontStyle().common(
            fontSize: 16.sp,
            color: white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
