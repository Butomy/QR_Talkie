import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/screens/profile/new_address_screen.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';

import '../../../utils/colors.dart';

class SavedAddress extends StatefulWidget {
  const SavedAddress({Key? key}) : super(key: key);

  @override
  State<SavedAddress> createState() => _SavedAddressState();
}

List<Map> data = [
  {
    "image": const AssetImage(
      "assets/images/homevector.png",
    ),
    "location": "Home",
    "name": "Hannibal Smith",
    "Address": "Lavilla Apartments, Flat No 35\nDubai Downtown,Dubai, UAE",
    "number": "Mobile - 8756346512"
  },
  {
    "image": const AssetImage("assets/images/work.png"),
    "location": "Work",
    "name": "Hannibal Smith",
    "Address": "Lavilla Apartments, Flat No 35\nDubai Downtown,Dubai, UAE",
    "number": "Mobile - 8756346512"
  }
];

class _SavedAddressState extends State<SavedAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: white,
        toolbarHeight: 80.h,
        backgroundColor: white,
        leading: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 42.w,
                height: 42.h,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 0.8, color: greybeb)),
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: black2c,
                ),
              ),
            )),
        centerTitle: true,
        title: Text(
          'Saved Address',
          style: CustomFontStyle().common(
            color: black2c,
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        bottom: PreferredSize(
            preferredSize: Size(0, 0),
            child: Divider(
              height: 0,
            )),
      ),
      backgroundColor: white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                  padding: const EdgeInsets.only(top: 23.48),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: data.length,
                  shrinkWrap: true,
                  itemBuilder: (contex, index) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            const SizedBox(
                              width: 29.39,
                            ),
                            Image(
                              image: data[index]["image"],
                              width: 15.76,
                              height: 15.76,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              data[index]["location"],
                              style: CustomFontStyle().common(
                                color: const Color(0xFF2C2C2C),
                                fontSize: 13.62.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: ScreenUtil().screenWidth / 7.5, top: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data[index]["name"],
                                style: CustomFontStyle().common(
                                    color: Colors.black
                                        .withOpacity(0.5600000023841858),
                                    fontSize: 13.62.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                data[index]["Address"],
                                style: CustomFontStyle().common(
                                    color: Colors.black
                                        .withOpacity(0.5600000023841858),
                                    fontSize: 13.62.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 14.65,
                              ),
                              Text(
                                data[index]["number"],
                                style: CustomFontStyle().common(
                                    color: Colors.black
                                        .withOpacity(0.5600000023841858),
                                    fontSize: 13.62.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 23.24,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/images/Delete.png",
                                    width: 20.18.w,
                                    height: 22.08.h,
                                  ),
                                  Text(
                                    'Remove',
                                    style: CustomFontStyle().common(
                                      color: const Color(0xFF2C2C2C),
                                      fontSize: 13.62.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 27.5.w,
                                  ),
                                  Image.asset(
                                    "assets/images/Edit.png",
                                    width: 15.39,
                                    height: 15.39,
                                  ),
                                  Text(
                                    'Edit',
                                    style: CustomFontStyle().common(
                                      color: const Color(0xFF2C2C2C),
                                      fontSize: 13.62.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 0.05,
                          color: black2c,
                          height: 21.h,
                        ),
                      ],
                    );
                  }),
              InkWell(onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context){

                  return const NewaddressScreen();
                }));
              },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 31),
                  width: double.infinity,
                  height: 49.14.h,
                  decoration: ShapeDecoration(
                    color: lightblue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.02),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Add New Address',
                        style: CustomFontStyle().common(
                          color: blue6ec,
                          fontSize: 14.04.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 5),
                          width: 24.w,
                          height: 24.h,
                          decoration: ShapeDecoration(
                            color: blue86,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(69.33),
                            ),
                          ),
                          child: const Icon(
                            Icons.add,
                            color: blue6ec,
                          ))
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
