import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/custom_font_style.dart';
import '../../widgets/addressTile.dart';

class ShippingDetails extends StatelessWidget {
  const ShippingDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Shipping Details',
            style: CustomFontStyle().common(
              color: const Color(0xFF2C2C2C),
              fontSize: 13.62.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 18.h,
          ),
          const AddressTile(),
        ],
      ),
    );
  }
}
