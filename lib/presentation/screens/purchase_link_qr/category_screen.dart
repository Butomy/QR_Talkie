import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/screens/bottom_navigation/bottom_navigation.dart';
import 'package:qr_talkie/presentation/screens/purchase_link_qr/assetspage.dart';
import 'package:qr_talkie/presentation/widgets/custom_button.dart';
import 'package:qr_talkie/presentation/widgets/custom_textfield.dart';
import 'package:qr_talkie/utils/colors.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';

import '../../../utils/bottomsheet_util.dart';
import '../../widgets/appbar_custom.dart';
import '../../widgets/categories_list_tile.dart';
import '../home_main_page/create_categories.dart';

class Categorypage extends StatefulWidget {
  const Categorypage({super.key});

  @override
  State<Categorypage> createState() => _CategorypageState();
}

class _CategorypageState extends State<Categorypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            child: CustomAppBar(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              leading: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: grey),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(50),
                          ),
                          color: Colors.white),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 20,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Categories',
                    style: CustomFontStyle().common(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Select from your categories',
              style: CustomFontStyle().common(
                color: black2c,
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          // InkWell(
          //   onTap: () {
          //     Navigator.push(context, MaterialPageRoute(builder: (context) {
          //       return const Assetspage();
          //     }));
          //   },
          //   child: Container(
          //     height: 75.h,
          //     margin: EdgeInsets.only(top: 15, bottom: 15),
          //     padding: const EdgeInsets.only(left: 10, right: 10),
          //     decoration: ShapeDecoration(
          //       color: Color(0xFFDADDEB),
          //       shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(8)),
          //     ),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Expanded(
          //           child: Text(
          //             'Vehicle',
          //             maxLines: 2,
          //             style: CustomFontStyle().common(
          //                 color: black2c,
          //                 fontSize: 15.sp,
          //                 fontWeight: FontWeight.w500,
          //                 overflow: TextOverflow.ellipsis),
          //           ),
          //         ),
          //         Image.asset("assets/images/car-01.png")
          //       ],
          //     ),
          //   ),
          // ),
          // Container(
          //   height: 75.h,
          //   padding: const EdgeInsets.only(left: 10, right: 10),
          //   decoration: ShapeDecoration(
          //     color: Color(0xFFDAEBDB),
          //     shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(8)),
          //   ),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Text(
          //         'House',
          //         style: CustomFontStyle().common(
          //           color: black2c,
          //           fontSize: 15.sp,
          //           fontWeight: FontWeight.w500,
          //         ),
          //       ),
          //       Image.asset(
          //         "assets/images/Group (2).png",
          //         height: 40,
          //       ),
          //     ],
          //   ),
          // ),
          // Spacer(),
          Expanded(
            child: ListView.separated(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return const CategoriesListTile();
                },
                separatorBuilder: (context, index) => SizedBox(
                      height: 10.h,
                    ),
                itemCount: 5),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomButton(
              text: 'Add New Category',
              bgColor: lightblue,
              onPress: () {
                bottomSheet(
                    context: context, content: const CreateCategories());
              },
              textColor: blue6ec,
            ),
          ),
        ],
      ),
    );
  }
}
