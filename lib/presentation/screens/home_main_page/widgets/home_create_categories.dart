import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/bottomsheet_util.dart';
import '../../../../utils/colors.dart';
import '../create_categories.dart';

class InitialCreationCategories extends StatelessWidget {
  const InitialCreationCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: ScreenUtil().screenWidth,
        height: 267.h,
        decoration: ShapeDecoration(
          color: greybeb,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Your Categories',
                style: TextStyle(
                  color: black2c,
                  fontSize: 20.23.sp,
                  fontWeight: FontWeight.w600,
                )),
            Text(
              'Create your categories to categorize \nyour assets.  ',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black.withOpacity(0.5600000023841858),
                fontSize: 12.83.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            InkWell(
              onTap: () {
                bottomSheet(
                    context: context, content: const CreateCategories());
              },
              child: Container(
                width: ScreenUtil().screenWidth / 3,
                height: 49.h,
                margin: EdgeInsets.all(8),
                decoration: ShapeDecoration(
                  color: lightblue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.02.r),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      color: blue6ec,
                    ),
                    Text(
                      'Create',
                      style: TextStyle(
                        color: blue6ec,
                        fontSize: 14.04.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
