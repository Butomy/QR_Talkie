import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/custom_font_style.dart';

class PriceDetails extends StatelessWidget {
  const PriceDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Price Details',
                  style: CustomFontStyle().common(
                    color: const Color(0xFF2C2C2C),
                    fontSize: 13.62.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                priceTile(title: 'Selling Price', price: '150'),
                SizedBox(
                  height: 8.h,
                ),
                priceTile(
                  title: 'Extra Discount',
                ),
                SizedBox(
                  height: 8.h,
                ),
                priceTile(title: 'Shipping fee', price: '20'),
              ],
            ),
          ),
          Divider(
            thickness: 0.50,
            color: const Color(0xFF2C2C2C),
            height: 16.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: priceTile(title: 'Total Amount', price: '170'),
          ),
        ],
      ),
    );
  }
}

Widget priceTile({String? title, String? price}) {
  return Row(
    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        child: Text(
          title ?? '',
          style: CustomFontStyle().common(
            color: const Color(0xFF979797),
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      Text(
        'AED ${price ?? 0}',
        style: CustomFontStyle().common(
          color: const Color(0xFF2C2C2C),
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
        ),
      )
    ],
  );
}
