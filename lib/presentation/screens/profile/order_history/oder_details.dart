import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/screens/profile/order_history/widget/shipping_details.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/custom_font_style.dart';
import '../../../widgets/appbar_custom.dart';
import '../widgets/ordertile.dart';
import '../widgets/price_details.dart';

class OderDetails extends StatefulWidget {
  const OderDetails({Key? key}) : super(key: key);

  @override
  State<OderDetails> createState() => _OderDetailsState();
}

class _OderDetailsState extends State<OderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size(AppBar().preferredSize.width, AppBar().preferredSize.height),
        child: AppBarCustom(
          leadingIconColor: black2c,
          centerTitle: true,
          title: "Order details",
          titleStyle: CustomFontStyle().common(
            color: const Color(0xFF2B2B2B),
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
      ),
      backgroundColor: white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                width: double.infinity,
                height: 45.h,
                decoration: const BoxDecoration(color: Color(0xFFF5F5F5)),
                child: Text(
                  'Order ID - OD5327865747',
                  style: CustomFontStyle().common(
                    color: const Color(0xFF2C2C2C),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: OrderTile(),
              ),
              const ShippingDetails(),
              Divider(
                thickness: 0.80,
                color: const Color(0xFF2C2C2C),
                height: 21.h,
              ),
              const PriceDetails(),
            ],
          ),
        ),
      ),
    );
  }
}
