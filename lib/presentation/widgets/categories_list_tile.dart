import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/colors.dart';
import '../../utils/custom_font_style.dart';
import '../screens/purchase_link_qr/assetspage.dart';

class CategoriesListTile extends StatelessWidget {
  const CategoriesListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const Assetspage();
        }));
      },
      child: Container(
        height: 75.h,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: ShapeDecoration(
          color: const Color(0xFFDADDEB),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                'Vehicle',
                maxLines: 2,
                style: CustomFontStyle().common(
                    color: black2c,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    overflow: TextOverflow.ellipsis),
              ),
            ),
            Image.asset("assets/images/car-01.png")
          ],
        ),
      ),
    );
  }
}
