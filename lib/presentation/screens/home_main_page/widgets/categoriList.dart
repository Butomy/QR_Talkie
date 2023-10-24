import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/custom_font_style.dart';
import '../../../widgets/categories_list_tile.dart';
import '../../../widgets/custom_button.dart';
import '../scan_purchase_page.dart';

class QrCategories extends StatelessWidget {
  const QrCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Your QR’s',
          textAlign: TextAlign.center,
          style: CustomFontStyle().common(
            color: black2c,
            fontSize: 20.23.sp,
          ),
        ),
        Text(
          'Access your purchased QR’s categories',
          style: CustomFontStyle().common(
            color: Colors.black.withOpacity(0.5600000023841858),
            fontSize: 12.83.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return const CategoriesListTile();
            },
            separatorBuilder: (context, index) => SizedBox(
                  height: 10.h,
                ),
            itemCount: 5),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const ScanPurchaseScreen();
            }));
          },
          child: Container(
            height: 75.h,
            margin: const EdgeInsets.only(top: 15, bottom: 15),
            padding: const EdgeInsets.only(left: 10, right: 10),
            decoration: ShapeDecoration(
              color: const Color(0xFFDADDEB),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Vehicle',
                  style: CustomFontStyle().common(
                    color: black2c,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Image.asset("assets/images/car-01.png")
              ],
            ),
          ),
        ),
        CustomButton(
          text: 'Create new category',
          textColor: bluuedec,
          bgColor: lightblue,
          onPress: () {},
          leftIcon: const Icon(
            Icons.add,
            color: blue6ec,
          ),
        ),
      ],
    );
  }
}
