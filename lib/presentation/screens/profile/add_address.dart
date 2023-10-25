import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/widgets/custom_button.dart';
import '../../../utils/colors.dart';
import '../../../utils/custom_font_style.dart';

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
      appBar: AppBar(
        backgroundColor: white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: black2c,
            )),
        centerTitle: true,
        title: Text(
          'Add Address',
          style: CustomFontStyle().common(
            color: black2c,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        bottom:
            const PreferredSize(preferredSize: Size(0, 0), child: Divider()),
        elevation: 0,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2.3,
                      height: 56.h,
                      child: TextFormField(
                        controller: name,
                        onChanged: (value) {
                          setState(() {});
                        },
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          filled: true,
                          focusColor: ash_eef,
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          labelText: 'First Name',
                          labelStyle: CustomFontStyle().common(
                            color: greyA7,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2.3,
                      height: 56.h,
                      child: TextFormField(
                        controller: lastname,
                        onChanged: (value) {
                          setState(() {});
                        },
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          filled: true,
                          focusColor: ash_eef,
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          labelText: 'Last Name',
                          labelStyle: CustomFontStyle().common(
                            color: greyA7,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 19.92.h,
                ),
                TextFormField(
                  controller: email,
                  onChanged: (value) {
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    filled: true,
                    focusColor: ash_eef,
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    labelText: 'Email Address',
                    labelStyle: CustomFontStyle().common(
                      color: greyA7,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 19.92.h,
                ),
                TextFormField(
                  controller: number,
                  onChanged: (value) {
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    filled: true,
                    focusColor: ash_eef,
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    labelText: 'Mobile Number',
                    labelStyle: CustomFontStyle().common(
                      color: greyA7,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 19.92.h,
                ),
                TextFormField(
                  controller: houseno,
                  onChanged: (value) {
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    filled: true,
                    focusColor: ash_eef,
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    labelText: 'House No. / Flat No. / Floor',
                    labelStyle: CustomFontStyle().common(
                      color: greyA7,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 19.92.h,
                ),
                TextFormField(
                  controller: locality,
                  onChanged: (value) {
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    filled: true,
                    focusColor: ash_eef,
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    labelText: 'Locality / Street Name',
                    labelStyle: CustomFontStyle().common(
                      color: greyA7,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 19.92.h,
                ),
                TextFormField(
                  controller: houseno,
                  onChanged: (value) {
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    filled: true,
                    focusColor: ash_eef,
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    labelText: 'City',
                    labelStyle: CustomFontStyle().common(
                      color: greyA7,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 14.94.h,
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
